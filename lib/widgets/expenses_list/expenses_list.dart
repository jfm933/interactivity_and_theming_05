import 'package:flutter/material.dart';
import 'package:interactivity_and_theming_05/widgets/expenses_list/expense_item.dart';

import '../../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpenseItem(expense: expenses[index]);
      },
      itemCount: expenses.length,
    );
  }
}
