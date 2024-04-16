import 'package:assignment3/sign_in.dart';
import 'package:assignment3/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginLandingPage extends StatefulWidget {
  const LoginLandingPage({super.key});

  @override
  State<LoginLandingPage> createState() => _LoginLandingPageState();
}

class _LoginLandingPageState extends State<LoginLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const SizedBox(height: 20),
              Image.asset("images/main-login.png", width: 300, height: 300),
              const Text("Let's you in", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.2))
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue, size: 50),
                    SizedBox(width: 20),
                    Text("Continue with Facebook", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                )
              ),
              const SizedBox(height: 20),
              Container(
                  width: 400,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google, color: Colors.red, size: 40),
                      SizedBox(width: 50),
                      Text("Continue with Google", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  )
              ),
              const SizedBox(height: 20),
              Container(
                  width: 400,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.apple, size: 40),
                      SizedBox(width: 50),
                      Text("Continue with Apple", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  )
              ),
              const SizedBox(height: 20),
               Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.grey.withOpacity(0.4),
                ),
               const SizedBox(width: 20),
               const Text("or", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(width: 20),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.grey.withOpacity(0.4),
                ),
              ],
            ),
             const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
                },
                child: Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Center(child:  Text("Sign in", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ),
             const SizedBox(height: 20),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: 20, color: Colors.grey)),
                 SizedBox(width: 10),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignUpPage()));
                   },
                     child: const Text("Sign up", style: TextStyle(color: Colors.blue, fontSize: 20))
                 )
               ],
             )
            ],
           ),
        ],
      ),
    );
  }
}
