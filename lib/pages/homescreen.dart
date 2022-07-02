import 'package:flutter/material.dart';
import 'package:gym_management/gridcardpages/addmembers.dart';
import 'package:gym_management/gridcardpages/addtrainer.dart';
import 'package:gym_management/gridcardpages/enquiry.dart';
import 'package:gym_management/gridcardpages/packages.dart';
import 'package:gym_management/gridcardpages/payments.dart';
import 'package:gym_management/pages/account.dart';
import 'package:gym_management/pages/dashboard.dart';
import 'package:gym_management/pages/homebottomNavigationbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2),
            children: [
              Card(
                elevation: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/scanicon.png'),
                      Text(
                        'Scan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.orange.withOpacity(0.9),
                splashColor: Colors.amber.withOpacity(0.9),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddMembers()));
                },
                child: Card(
                  elevation: 5,
                  child: Ink(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/addmembericon1.png'),
                          Text(
                            'Add member',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/membersicon.png'),
                      Text(
                        'Members',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.orange.withOpacity(0.9),
                splashColor: Colors.amber.withOpacity(0.9),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Packages()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/planicon.png'),
                        Text(
                          'Package',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Card(
              //   elevation: 5,
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset('assets/images/attendanceicon.png'),
              //         Text(
              //           'Attendance',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // Card(
              //   elevation: 5,
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset('assets/images/savenotesicon.png'),
              //         Text(
              //           'Save Notes',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // Card(
              //   elevation: 5,
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset('assets/images/batchicon.png'),
              //         Text(
              //           'Batch',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // Card(
              //   elevation: 5,
              //   child: Container(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset('assets/images/reporticon.png'),
              //         Text(
              //           'Reports',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              InkWell(
                highlightColor: Colors.orange.withOpacity(0.9),
                splashColor: Colors.amber.withOpacity(0.9),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Enquiry()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/enquiryicon.png'),
                        Text(
                          'Enquiry',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.orange.withOpacity(0.9),
                splashColor: Colors.amber.withOpacity(0.9),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payments()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/expenseicon.png',
                          height: 60,
                        ),
                        Text(
                          'Payments',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/trainericon.png',
                        height: 60,
                      ),
                      Text(
                        'Trainer',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.orange.withOpacity(0.9),
                splashColor: Colors.amber.withOpacity(0.9),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddTrainer()));
                },                
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/addtrainericon.png',
                          height: 60,
                        ),
                        Text(
                          'Add Trainer',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
