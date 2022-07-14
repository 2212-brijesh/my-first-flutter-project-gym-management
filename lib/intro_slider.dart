import 'package:flutter/material.dart';
import 'package:gym_management/indicator.dart';
import 'package:gym_management/pages/loginscreen.dart';
import 'package:gym_management/pages/signup.dart';
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
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   /* light theme settings */
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   /* dark theme settings */
      // ),
      // themeMode: ThemeMode.dark, 
      // /* ThemeMode.system to follow system theme, 
      //    ThemeMode.light for light theme, 
      //    ThemeMode.dark for dark theme
      // */
      // debugShowCheckedModeBanner: false,      
      home: 
    Scaffold(
      body: Container( 
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            buildPage(
                color: Colors.blue.shade100,
                urlImage: 'assets/images/addmembers22.png',
                title: 'ADD MEMBERS',
                subtitle:
                    'Member List Filter By(Active,inActive)\nAttendance\nIntegrated SMS Panel\nManage By Batch'),
            buildPage(
                color: Color.fromARGB(255, 165, 187, 194),
                urlImage: 'assets/images/dashboard33.png',
                title: 'DASHBOARD',
                subtitle:
                    'Member UpComing Expiry Report By (1-3 Days,4-7 Days,7-15 Days)\nToday Report\nMembership Expiry Today\nMember Registration Report'),
            buildPage(
                color: Colors.green.shade100,
                urlImage: 'assets/images/manage22.png',
                title: 'MANAGE',
                subtitle:
                    'Manage Enquiry\nManage Staff & Trainer\nManage Gym Expense\nAdditional Features'),
          ],
        ),
      ),
      bottomSheet: Container( decoration: BoxDecoration(
       color: Colors.black54
      ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text('Register',style: TextStyle(color: Colors.white),)),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                      spacing: 16,
                      dotColor: Colors.white,
                      activeDotColor: Colors.amber),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text('Log In',style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
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
}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          // const SizedBox(
          //   height: 64,
          // ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,
                  subtitle,
                  style: const TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
