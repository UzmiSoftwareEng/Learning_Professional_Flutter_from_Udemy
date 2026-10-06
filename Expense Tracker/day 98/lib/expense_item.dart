import 'package:expenses_tracker/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget{
  ExpenseItem(this.expense ,{super.key});
  
  final Expense expense;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(3)}'), //12.3333793 = 12.333
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.restaurant),
                    SizedBox(
                      height: 7,
                    ),
                    Text(expense.date.toString() )
                  ],
                ),
              ],
            )
          ],
        )
        ),
    );
  }
}