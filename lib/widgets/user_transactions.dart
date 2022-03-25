import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'add_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [];
  // Function to add transaction ans pass the pointer
  void _addTransaction({String title, double price}) {
    final tx = Transaction(
      title: title,
      price: price,
      tDate: DateTime.now(),
    );

    // Change the transaction list state
    setState(() {
      _transactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Amalgam of the two widgets who share the same list
    return Container(
      child: Column(
        children: [
          AddTransaction(_addTransaction),
          TransactionList(_transactions),
        ],
      ),
    );
  }
}
