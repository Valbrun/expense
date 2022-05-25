// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addNewTx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  NewTransaction(this.addNewTx);
  void submitData() {
    final String title = titlecontroller.text;
    final double amount = double.parse(amountcontroller.text);

    if (title.isEmpty || amount <= 0) {
      return;
    }

    addNewTx(title, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titlecontroller,
                onSubmitted: (_) => submitData(),

                // onChanged: (val) => titlefield = val,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountcontroller,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
                // onChanged: (val) {
                //   amountfield = val;
                // },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: submitData,
                textColor: Colors.purple,
                child: Text('Add Transactions'),
              ),
            ],
          ),
        ));
  }
}
