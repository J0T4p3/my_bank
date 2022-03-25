import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Card(
        elevation: 4,
        child: Center(
          child: Text(
            'Chart!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
