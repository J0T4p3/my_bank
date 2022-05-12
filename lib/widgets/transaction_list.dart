import 'package:flutter/material.dart';

import 'package:my_bank/models/transaction.dart';
import 'package:my_bank/widgets/transaction_list_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  // Generates de list of transactions
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          // For each transaction return a new transaction card
          return TransactionCard(
            title: transactions[index].title,
            price: transactions[index].price,
            tDate: transactions[index].tDate,
          );
        },
      ),
    );
  }
}
