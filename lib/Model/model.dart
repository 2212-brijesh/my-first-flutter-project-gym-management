// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:sqflite/sql.dart';
// import 'package:path/path.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart';

// class Member {
//   final String gymname;
//   final String email;
//   final int? number;
//   final String password;
//   Member({
//     required this.gymname,
//     required this.email,
//     required this.number,
//     required this.password,
//   });

//   Member.fromMap(Map<String, dynamic> res) 
//       : gymname = res["gymname"],
//         email = res["name"],
//         number = res["number"],
//         password = res["password"];


//   Map<String, Object?> toMap() {
//     return {
//       'gymname': gymname,
//       'email' : email,
//       'number' : number,
//       'password' : password,
//     };
//   }      

  // Future<void> insertMember(Member member) async {
  //   final db = await database;
  //   await db.insert(
  //     'member',
  //     member.toMap(),
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   );
  // }
// }
class User {
  final int? number;
  final String gymname;
  final String email;
  final String password;
  User({
    this.number,
    required this.gymname,
    required this.email,
    required this.password,
  });

  User.fromMap(Map<String, dynamic> res)
      : number = res["number"],
        gymname = res["gymname"],
        email = res["email"],
        password = res["password"];

  Map<String, Object?> toMap() {
    return {
      'number': number,
      'gymname': gymname,
      'email': email,
      'password': password,
    };
  }
}