import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function addTransaction;

  AddTransaction(this.addTransaction);
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                labelText: 'Valor',
              ),
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              onPressed: () {
                //dispose();

                addTransaction(
                  title: titleController.text,
                  price: double.parse(priceController.text),
                );

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Transação adicionada'),
                    content: Text('Sua transação foi adicionada com sucesso!'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Ok"),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
