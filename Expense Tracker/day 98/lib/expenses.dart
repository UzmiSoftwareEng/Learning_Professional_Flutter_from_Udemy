import 'package:expenses_tracker/expense.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Text('Hello'),
        
        ],
      ),
    );
  }
}