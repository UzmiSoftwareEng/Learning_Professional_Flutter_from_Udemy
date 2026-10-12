import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expenses_tracker/expense.dart';

class NewExpense extends StatefulWidget{
    const NewExpense({super.key, required this.onAddExpense});

  final void Function(Expense expense) onAddExpense;

  @override
  State<NewExpense> createState()  {
    return _NewExpenseState();
  }
}
class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.food;

  void _activeDatePicker () async{
    final now = DateTime.now();
    final firstDate = DateTime(now.year-1 , now.month, now.day);

   final pickedDate = await showDatePicker(
     context: context,
     initialDate: now,
     firstDate: firstDate,
     lastDate: now,
    );
   setState(() {
     _selectedDate = pickedDate;
   });
}

   void _submitExpenseData() {
     final enteredAmount = double.tryParse( _amountController
         .text); //tryParse('Hello") => null, tryParse('1.20') => 1.20
     final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if(_titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      showDialog(context: context, builder: (ctx) => AlertDialog(
        title: Text("Invalid input"),
        content: Text('Please make sure a valid title, amount, date and category was entered.'),
        actions: [
          TextButton(onPressed: () {
      Navigator.pop(ctx);
      },
        child: Text('Okay'),
          ),
        ],
      )
      );
      return;
    }
    widget.onAddExpense(
      Expense(
        title: _titleController.text,
        amount: enteredAmount,
        category: _selectedCategory,
        date: _selectedDate!,
       ),
     );
    Navigator.pop(context);
   }

   @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 80,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: 'Rs ',
                    label: Text('Amount'),
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        _selectedDate == null
                            ? 'No date selected'
                            : formatted.format(_selectedDate!),
                    ), //
                    IconButton(
                        onPressed: _activeDatePicker,
                        icon: Icon(Icons.calendar_month,
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
              SizedBox(height: 8,),
              Row(
                children: [
                  DropdownButton(
                    value: _selectedCategory,
                     items: Category.values.map(
                  (category) => DropdownMenuItem(
                    value: category,
                    child: Text (
                      category.name.toUpperCase(),),),
                  )
                         .toList(),
                         onChanged: (value) {
                       if (value == null){
                         return;
                       }
                           setState(() {
                             _selectedCategory = value;
                           });
                         }),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
              ),
          SizedBox(width: 8,),
          ElevatedButton(
              onPressed: _submitExpenseData,
              child: const Text('Save Expense')),
        ],
      ),
        ]
      ),
    );
  }
}