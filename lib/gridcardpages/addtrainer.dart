import 'package:flutter/material.dart';

class AddTrainer extends StatefulWidget {
  const AddTrainer({Key? key}) : super(key: key);

  @override
  State<AddTrainer> createState() => _AddTrainerState();
}

class _AddTrainerState extends State<AddTrainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Trainer'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
                          Center(
                child: Image.asset(
                  'assets/images/addnewtrainericon.png',
                  height: 220,
                ),
              ),
            SizedBox(height: 20,),
             TextField(
                    decoration: InputDecoration(
                      hintText: 'Trainer ID',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Trainer ID',
                    ),
                  ),
            SizedBox(height: 20,),
             TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Name',
                    ),
                  ),
            SizedBox(height: 20,),
             TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Phone',
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {}, child: Text('Save')),
          ],),
        ),
      ),
    );
  }
}
