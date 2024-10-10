import 'package:flutter/material.dart';
import 'package:ui_4/screens/intro2.dart';
class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/illustration.png'),
            SizedBox(height: 20,),
            Text('Learn anytime \n and anywhere',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Text('Quarantine is the perfect time to spend your \n day learning something new, from anywhere'),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Intro2()));
              },
              child: Container(
                child: Center(child: Text('Next',style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500
                ),)),
                height: 56,
                width: 311,
                decoration: BoxDecoration(
                  color: Color(0xffE3562A),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
