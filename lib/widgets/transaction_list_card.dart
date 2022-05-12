import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final double price;
  final DateTime tDate;

  TransactionCard({this.title, this.price, this.tDate});

  String formatDateTime(DateTime date) {
    String formattedDate = DateFormat('dd/MM/yyyy').format(date);
    print(formattedDate);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 70,
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
                      '$title',
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
                            '$price',
                          ),
                          Text(
                            formatDateTime(tDate),
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
  }
}
