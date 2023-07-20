import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      amount: 34.99,
      date: DateTime.now(),
      title: 'Flutter Course',
      category: Category.work,
    ),
    Expense(
      amount: 24.69,
      date: DateTime.now().add(const Duration(days: -12)),
      title: 'Cinema',
      category: Category.leisure,
    ),
    Expense(
      amount: 20.99,
      date: DateTime.now().add(const Duration(days: -1)),
      title: 'Groceries',
      category: Category.food,
    ),
    Expense(
      amount: 1699.99,
      date: DateTime.now().add(const Duration(days: -4)),
      title: 'Laptop',
      category: Category.work,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ..._registeredExpenses.map((e) => Text(e.title)).toList(),
        ],
      ),
    );
  }
}
