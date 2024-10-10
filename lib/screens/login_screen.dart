import 'package:flutter/material.dart';
import 'package:ui_4/screens/signup_screen.dart';
import 'package:ui_4/utilities/root_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const RootPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Image.asset('assets/images/illustration2.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Login with social networks',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 130),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/Social Buttons.png'),
                      const SizedBox(
                        width: 7,
                      ),
                      Image.asset('assets/images/Social Buttons (1).png'),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff65AAEA),
                          ),
                          width: 40,
                          height: 40,
                          child: Image.asset(
                              'assets/images/Social Networks Icons.png')),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27, top: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "email cannot be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "email",
                    focusColor: const Color(0xffE3562A),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'example@gmail.com',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27, top: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password cannot be empty";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Forget Password?'),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => moveToHome(context),
                child: Container(
                  height: 56,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffE3562A),
                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text('Sign up'))
            ],
          ),
        ),
      ),
    );
  }
}
