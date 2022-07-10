import 'package:flutter/material.dart';
import 'package:gym_management/Model/model.dart';
import 'package:gym_management/splashScreen.dart';
import 'package:gym_management/intro_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:gym_management/pages/signup.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'member_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE members(number INTEGER PRIMARY KEY, gymname TEXT, email TEXT, password TEXT )',
      );
    },
    version: 1,
  );

//   Future<void> insertMember(Member member) async {
//     final db = await database;
//     Member member = new Member(gymname:_conGymName.text.toString(),
//  );
//     // await db.insert(
//     //   'member',
//     //   member.toMap(),
//     //   conflictAlgorithm: ConflictAlgorithm.replace,
//     // );
//   }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);



//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//            Image.asset('assets/images/strength.png',fit:BoxFit.cover)
//           ],
//         ),
//       ),

//     );
//   }
// }
