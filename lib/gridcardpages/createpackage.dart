import 'package:flutter/material.dart';

class CreatePackage extends StatefulWidget {
  const CreatePackage({Key? key}) : super(key: key);

  @override
  State<CreatePackage> createState() => _CreatePackageState();
}

class _CreatePackageState extends State<CreatePackage> {
  String _selectedDaysMonths = 'days';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Package'),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Package Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Package Name',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Fees',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Fees',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              StatefulBuilder(builder: (context, setState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: Radio<String>(
                        value: 'days',
                        groupValue: _selectedDaysMonths,
                        onChanged: (value) {
                          setState(() {
                            _selectedDaysMonths = value!;
                          });
                        },
                      ),
                      title: const Text('Days'),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'months',
                        groupValue: _selectedDaysMonths,
                        onChanged: (value) {
                          setState(() {
                            _selectedDaysMonths = value!;
                          });
                        },
                      ),
                      title: const Text('Months'),
                    ),
                  ],
                );
              }),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Duration',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Duration',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Package detail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Package detail',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
