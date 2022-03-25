import 'package:flutter/material.dart';
import 'package:my_bank/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map(
        (tx) {
          return Card(
            child: Container(
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  // Icon
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Icon(
                          Icons.checkroom,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                    ),
                    flex: 1,
                  ),

                  // Transaction info
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Transaction Title
                          Text(
                            '${tx.title}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${tx.price}',
                                ),
                                Text(
                                  '${tx.tDate}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 4,
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
