import 'package:flutter/material.dart';
import 'package:gym_management/gridcardpages/packages.dart';

class CreatePackage extends StatefulWidget {
  const CreatePackage({Key? key}) : super(key: key);

  @override
  State<CreatePackage> createState() => _CreatePackageState();
}

class _CreatePackageState extends State<CreatePackage> {
  var _formKey = GlobalKey<FormState>();  
  String _selectedDaysMonths = 'days';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Package'),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                  final isValidForm = _formKey.currentState!.validate();
                  if (isValidForm) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Packages(),
                      ),
                    );
                  }                 
              },
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Package Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Package Name',
                  ),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a Package Name';
                    }
                    return null;
                  },                  
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Fees',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Fees',
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a Fees';
                    }
                    return null;
                  },                     
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Duration',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Duration',
                  ),
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a Duration';
                    }
                    return null;
                  },                  
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Package detail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Package detail',
                  ),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a Package detail';
                    }
                    return null;
                  },                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
