import 'package:flutter/material.dart';
import 'package:ui_4/screens/intro3.dart';
class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Cool Kids Staying Home.png'),
          SizedBox(height: 20,),
          Text('Find a course \n       for you',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 20,),
          Text('Quarantine is the perfect time to spend your \n day learning something new, from anywhere!'),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Intro3()));
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
    );
  }
}
