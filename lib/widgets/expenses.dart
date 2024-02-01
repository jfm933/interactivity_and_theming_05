import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interactivity_and_theming_05/models/expense.dart';
import 'package:interactivity_and_theming_05/widgets/expenses_list/expenses_list.dart';
import 'package:interactivity_and_theming_05/widgets/new_expense.dart';
import 'package:uuid/uuid.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Cinema',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            padding: EdgeInsets.all(20),
            child: NewExpense(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter ExpenseTracker'),
          actions: [
            IconButton(
              onPressed: () {
                _openAddExpenseOverlay();
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            Text('The chart'),
            Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            )
          ],
        ));
  }
}
