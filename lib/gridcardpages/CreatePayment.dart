import 'package:flutter/material.dart';

class CreatePayment extends StatefulWidget {
  const CreatePayment({Key? key}) : super(key: key);

  @override
  State<CreatePayment> createState() => _CreatePaymentState();
}

class _CreatePaymentState extends State<CreatePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Payments'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Customer Name',
                labelText: 'Customer Name',
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Package Name',
                labelText: 'Package Name',
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Amount',
                labelText: 'Amount',
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Payment Type',
                labelText: 'Payment Type',
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
              ),
            ),
                      SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
