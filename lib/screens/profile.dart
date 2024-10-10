import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_4/sub_screens/payment.dart';
import 'package:ui_4/sub_screens/saved.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const Center(
            child:
            Text('Profile',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
          ),
         const SizedBox(
            height: 20,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.blue
              ),
            ),
            child: Image.asset('assets/images/Cool Kids Bust.png'),
          ),
        const  SizedBox(
            height: 20,
          ),
          Container(
            child: Center(child: Text('Your Courses',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),)),
            height: 80,
            width: 343,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(16)
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Saved()));
            },
            child: Container(
                 child: Center(child: Text('Saved',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),)),
              height: 80,
              width: 343,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
            },
            child: Container(
              child: Center(child: Text('Payment',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),)),
              height: 80,
              width: 343,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
         const Text('Log out'),
        ],

      ),

        // bottomNavigationBar:
        // BottomNavigationBar(
        //
        // items: const <BottomNavigationBarItem>[
        // BottomNavigationBarItem(
        //
        // icon: Icon(CupertinoIcons.book),
        //     label: 'Courses',
        //     ),
        //     BottomNavigationBarItem(
        //     icon: Icon(CupertinoIcons.person),
        //     label: 'Profile',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(CupertinoIcons.settings),
        //     label: 'Settings',
        //
        //     ),
        // ],
        //
        // )
    );
  }
}
