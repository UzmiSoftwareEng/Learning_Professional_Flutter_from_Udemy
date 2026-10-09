import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewExpense extends StatefulWidget{
  @override
  State<NewExpense> createState()  {
    return _NewExpenseState();
  }
}
class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _activeDatePicker (){
    final now = DateTime.now();
    final firstDate = DateTime(now.year-1 , now.month, now.day);

    showDatePicker(context: context,
  initialDate: now,
  firstDate: firstDate,
  lastDate: now,
    );
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
                    prefixText: '\$ ',
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
                    Text('Selected Date', ),
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