import 'package:flutter/material.dart';
import 'package:gym_management/gridcardpages/enquiry.dart';
class EnquiryList extends StatefulWidget {
  const EnquiryList({Key? key}) : super(key: key);

  @override
  State<EnquiryList> createState() => _EnquiryListState();
}

class _EnquiryListState extends State<EnquiryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Members'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Enquiry()));
        },
        child: Icon(Icons.add),
      ),
    );    
  }
}