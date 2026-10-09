import 'package:expenses_tracker/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/expense.dart';
import 'package:expenses_tracker/expenses_list.dart';
import 'package:flutter/widgets.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();

    }
  }
class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: "Cinema",
    amount: 200,
    date: DateTime.now(),
    category: Category.work,
    ),
    Expense(title: 'Burger',
    amount: 450,
    date: DateTime.now(),
    category: Category.food,
    ),
  ];

  void _addExpenseOverlay() {
   showModalBottomSheet(context: context, builder: (ctx) => NewExpense(),
   );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Flutter Expense Tracker'),
      actions: [
        IconButton(
            onPressed: _addExpenseOverlay,
            icon: Icon( Icons.add),
        ),
        IconButton(
          onPressed: (){},
            icon: Icon(Icons.more_vert),
        ),
      ],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Expenses Tracker'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses,),
        ),
        ],
      ),
    );
  }
}