import 'package:flutter/material.dart';

class Enquiry extends StatefulWidget {
  const Enquiry({Key? key}) : super(key: key);

  @override
  State<Enquiry> createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/enquiry1icon.png'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Name',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last Name',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Last Name',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Contact No.',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Contact No.',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Save')),
          ],
        ),
      ),
    );
  }
}
