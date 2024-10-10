// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSelected = false;
  void toggleSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/cycle.png'),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 82,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  leading: Image.asset('assets/images/notification.png'),
                  title: const Text(
                    'Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Switch(
                    value: isSelected,
                    onChanged: toggleSwitch,
                    activeColor: const Color(0xff65AAEA),
                    activeTrackColor: Colors.blue.shade100,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            // ignore: sized_box_for_whitespace
            child: Container(
                width: 400,
                child: const Text(
                  'Account information',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              leading: Image.asset('assets/images/profile.png'),
              title: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Ali Hassan'),
              trailing: Icon(CupertinoIcons.forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              leading: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      color: Color(0xff65AAEA),
                      borderRadius: BorderRadius.circular(48)),
                  child: Image.asset('assets/images/email.png')),
              title: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('hassan@gmail.com'),
              trailing: Icon(CupertinoIcons.forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              leading: Image.asset('assets/images/password.png'),
              title: Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('changed 3 hours ago'),
              trailing: Icon(CupertinoIcons.forward),
            ),
          ),
        ],
      ),
    );
  }
}
