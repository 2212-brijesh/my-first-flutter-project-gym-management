import 'package:flutter/material.dart';
import 'package:gym_management/DatabaseHandler/databasehelper.dart';
import 'package:gym_management/Model/model.dart';

class FutureDark extends StatefulWidget {
  const FutureDark({
    Key? key,
    required this.gymname,
  }) : super(key: key);

  final String gymname;

  @override
  State<FutureDark> createState() => _FutureDarkState();
}

class _FutureDarkState extends State<FutureDark> {
  DatabaseHandler? handler;
  @override
  void initState() {
    List<User> users = [
      
    ]
  }
  @override
  Widget build(BuildContext context) {}
}
