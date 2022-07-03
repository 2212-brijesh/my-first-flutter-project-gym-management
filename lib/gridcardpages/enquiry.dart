import 'package:flutter/material.dart';
import 'package:gym_management/gridcardpages/enquirylist.dart';

class Enquiry extends StatefulWidget {
  const Enquiry({Key? key}) : super(key: key);

  @override
  State<Enquiry> createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/images/enquiry1icon.png'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Name',
                ),
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Last Name',
                ),
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a Last Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Contact No.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Contact No.',
                ),
                keyboardType: TextInputType.number,
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a Contact No.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 13,
              ),
              ElevatedButton(
                  onPressed: () {
                    final isValidForm = _formKey.currentState!.validate();
                    if (isValidForm) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EnquiryList(),
                        ),
                      );
                    }
                  },
                  child: Text('Save')),
            ],
          ),
        ),
      ),
    );
  }
}
