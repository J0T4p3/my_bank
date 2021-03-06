import 'package:flutter/material.dart';

import 'widgets/chart.dart';
import 'widgets/user_transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My bank',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyBank('My Bank'),
    );
  }
}

class MyBank extends StatelessWidget {
  final String title;
  // Class constructor
  MyBank(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Chart
              Chart(),
              // Transactions
              UserTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
