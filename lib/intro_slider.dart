

import 'package:flutter/material.dart';
import 'package:gym_management/indicator.dart';
import 'package:gym_management/pages/loginscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroSlider extends StatefulWidget {
  IntroSlider({Key? key}) : super(key: key);

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child:PageView(controller: controller,children: [
          buildPage(color: Colors.blue.shade100, urlImage: 'assets/images/gymslide11.png', title: 'ADD MEMBERS', subtitle: 'Member List Filter By(Active,inActive)\nAttendance\nIntegrated SMS Panel\nManage By Batch'),
          buildPage(color: Colors.blueGrey.shade100, urlImage: 'assets/images/gymslide2.png', title: 'DASHBOARD', subtitle: 'Member UpComing Expiry Report By (1-3 Days,4-7 Days,7-15 Days)\nToday Report\nMembership Expiry Today\nMember Registration Report'),
          buildPage(color: Colors.green.shade100, urlImage: 'assets/images/gymslide33.png', title: 'MANAGE', subtitle: 'Manage Enquiry\nManage Staff & Trainer\nManage Gym Expense\nAdditional Features'),
        ],),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: const Text('Sign Up')),
            Center(child: SmoothPageIndicator(controller: controller,count: 3,effect: WormEffect(spacing: 16,dotColor: Colors.black54,activeDotColor: Colors.teal.shade700),onDotClicked: (index) => controller.animateToPage(index, duration:const Duration(milliseconds: 500), curve: Curves.easeIn),),),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen() ));
            }, child: const Text('Log In')),
          ],
        ),
      ),
    );
  }
}

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,

}) => Container(
  color: color,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(urlImage,fit: BoxFit.cover,width: double.infinity,),
      const SizedBox(height: 64,),
      Text(title,style: TextStyle(color: Colors.teal.shade700,fontSize: 32,fontWeight: FontWeight.bold,),),
      const SizedBox(height: 24,),
      Container(padding: const EdgeInsets.symmetric(horizontal: 24),child: Text(subtitle,style: const TextStyle(color: Colors.black54,fontSize: 18),),),
    ],
  ),
);