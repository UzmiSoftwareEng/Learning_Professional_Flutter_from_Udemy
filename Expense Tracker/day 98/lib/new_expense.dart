import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expenses_tracker/expense.dart';

class NewExpense extends StatefulWidget{
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

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          ElevatedButton(onPressed: () {
            print (
              'Title ${_titleController.text} , Amount ${_amountController.text}',
            );
          },
              child: const Text('Save Expense')),
        ],
      ),
        ]
      ),
    );
  }
}