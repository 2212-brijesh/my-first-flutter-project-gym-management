import 'package:flutter/material.dart';
import 'package:gym_management/gridcardpages/createpackage.dart';

class Packages extends StatefulWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package'),
      ),
      body: Center(
        child: Text('Plans not found\nCreate new plans'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreatePackage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
