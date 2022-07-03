import 'package:flutter/material.dart';

class TrainerList extends StatefulWidget {
  const TrainerList({Key? key}) : super(key: key);

  @override
  State<TrainerList> createState() => _TrainerListState();
}

class _TrainerListState extends State<TrainerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Trainer'),),);
  }
}
