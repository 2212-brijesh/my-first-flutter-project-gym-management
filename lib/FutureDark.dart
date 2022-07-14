import 'package:flutter/material.dart';
import 'package:gym_management/DatabaseHandler/databasehelper.dart';
import 'package:gym_management/Model/model.dart';

// class FutureDark extends StatefulWidget {
//   const FutureDark({
//     Key? key,
//     required this.gymname,
//   }) : super(key: key);

//   final String gymname;

//   @override
//   State<FutureDark> createState() => _FutureDarkState();
// }

// class _FutureDarkState extends State<FutureDark> {
//   DatabaseHandler? handler;
//   @override
//   void initState() {
//     List<User> users = [
//       User(gymname: widget.gymname.toString(), email: '', password: ''),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
class FutureDark extends StatefulWidget {
  const FutureDark({
    Key? key,
    required this.gymname,
  }) : super(key: key);

  final String gymname;

  @override
  State<FutureDark> createState() => _FutureDarkState();
}

class _FutureDarkState extends State<FutureDark> {
  DatabaseHandler? handler;
  @override
  void initState() {
    List<User> users = [
      User(gymname: widget.gymname.toString(), email: '', password: ''),
    ];
    Future<int> addUsers() async {
      return await handler!.insertUser(users);
    }

    super.initState();
    handler = DatabaseHandler();
    handler!.initializeDB().whenComplete(() async {
      await addUsers();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Showing Data'),
      ),
      body: FutureBuilder(
        future: handler!.retrieveUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    key: ValueKey<int>(snapshot.data![index].number!),
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(
                      snapshot.data![index].gymname,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}