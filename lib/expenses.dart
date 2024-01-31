import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expenses'),
        ),
        body: Column(
          children: [Text('The chart'), Text('Expenses list'), Text("Tap")],
        ));
  }
}
