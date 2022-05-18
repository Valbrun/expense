// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './newTransation.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => __UserTransactionsState();
}

class __UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions_returned_list = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 95.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New paints',
      amount: 91.63,
      date: DateTime.now(),
    ),
  ];
  addNewTx(String title, double amount) {
    final newTX = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _transactions_returned_list.add(newTX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addNewTx),
        TransactionList(_transactions_returned_list),
      ],
    );
  }
}
