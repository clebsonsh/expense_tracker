import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';

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
        background: Container(
          color: Theme.of(context).colorScheme.primary,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16),
          margin: Theme.of(context).cardTheme.margin,
          child: const Icon(
            Icons.archive,
            size: 40,
          ),
        ),
        secondaryBackground: Container(
          color: Theme.of(context).colorScheme.error,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 16),
          margin: Theme.of(context).cardTheme.margin,
          child: const Icon(
            Icons.delete,
            size: 40,
          ),
        ),
        key: ValueKey(expenses[index].id),
        child: ExpenseItem(expenses[index]),
        onDismissed: (direction) => onRemoveExpense(expenses[index]),
      ),
    );
  }
}
