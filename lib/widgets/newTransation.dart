// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addNewTx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  NewTransaction(this.addNewTx);
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
                // onChanged: (val) => titlefield = val,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountcontroller,
                // onChanged: (val) {
                //   amountfield = val;
                // },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  addNewTx(titlecontroller.text,
                      double.parse(amountcontroller.text));
                  // print(titlecontroller.text);
                  // print(amountcontroller.text);
                },
                textColor: Colors.purple,
                child: Text('Add Transactions'),
              ),
            ],
          ),
        ));
  }
}
