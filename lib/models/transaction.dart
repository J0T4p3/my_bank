import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final double price;
  final DateTime tDate;

  Transaction({
    @required this.title,
    @required this.price,
    @required this.tDate,
  });
}
