import 'package:expenses_tracker/expense.dart';
import 'package:expenses_tracker/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          alignment: Alignment.centerRight,
          margin: EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal,)
        ),
        confirmDismiss: (direction) async {
          final shouldDelete = await showDialog<bool>(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text("Delete Expense?"),
              content: Text('Are you sure you want to delete expense?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx, true),
                  child: Text('Yes'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(ctx, false),
                  child: Text('No'),
                ),
              ],
            ),
          );
          return shouldDelete ?? false;
        },
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}