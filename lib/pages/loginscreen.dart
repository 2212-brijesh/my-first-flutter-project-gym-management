import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Image.asset('assets/images/login.gif',fit: BoxFit.fill,) ,
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,children: const [
               Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
              ],),),
              const SizedBox(height: 20.0,),
               TextField(decoration: InputDecoration(
                hintText: 'Email',
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),),
              const SizedBox(height: 17,),
              TextField(obscureText: true,decoration: InputDecoration(hintText: 'Password',suffixIcon:Icon(Icons.visibility_off),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)) ),),
              const SizedBox(height: 30.0,),
              Padding(padding: EdgeInsets.all(10.0),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                ElevatedButton(
                  onPressed: (){},
                  child:Text('Forget password',style: TextStyle(fontSize: 12.0),),style: ElevatedButton.styleFrom(primary:Colors.yellow.shade100 ,onPrimary: Colors.black54,elevation:5,shadowColor:Colors.blue,textStyle: TextStyle(color: Colors.white,fontSize: 20)),),
                ElevatedButton(onPressed: () {}, child: Text('Login'),style: ElevatedButton.styleFrom(primary: Colors.yellow.shade100,onPrimary: Colors.black54,elevation:5,shadowColor:Colors.blue,textStyle: TextStyle(color: Colors.white,fontSize: 20,)),)
              ],),)
            ],
          ),
        ),
      ),
    );
  }
}
