import 'package:assignment3/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({Key? key}) : super(key: key);

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
   TextEditingController userEmail = TextEditingController();
   TextEditingController userPass = TextEditingController();
   FocusNode emailFocusNode = FocusNode();
   FocusNode passFocusNode = FocusNode();
  bool isHide = true;
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {
      });
    });
    passFocusNode.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
  }

  Color getIconColor(FocusNode focusNode) {
    return focusNode.hasFocus ? Colors.blueAccent : Colors.grey;
  }

  Color getBackgroundColor(FocusNode focusNode) {
    return focusNode.hasFocus ? Colors.blueAccent.withOpacity(0.2) : Colors.white.withOpacity(0.2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset("images/sign-up-logo.png", width: 150, height: 150),
                const Text("Create your account", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.withOpacity(0.2))
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: userEmail,
                            focusNode: emailFocusNode,
                            decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email, color: getIconColor(emailFocusNode)),
                              filled: true,
                              fillColor: getBackgroundColor(emailFocusNode),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blueAccent.shade700),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.withOpacity(0.2))
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: userPass,
                            focusNode: passFocusNode,
                            obscureText: isHide,
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock, color: getIconColor(passFocusNode)),
                              suffixIcon: IconButton(onPressed: (){
                                setState(() {
                                  isHide = ! isHide;
                                });
                              },
                                icon: isHide == true ? Icon(Icons.remove_red_eye, color: getIconColor(passFocusNode)) : Icon(Icons.panorama_fish_eye, color: getIconColor(passFocusNode))),
                              filled: true,
                              fillColor: getBackgroundColor(passFocusNode),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blueAccent.shade700),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text("Remember me"),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Account Created successfully!")));
                          String uemail = userEmail.text;
                          String upass = userPass.text;
                          FirebaseAuth.instance.createUserWithEmailAndPassword(email: uemail, password: upass);
                        }
                      }, child: Text("Sign Up"))
                      // GestureDetector(
                      //   onTap: (){
                      //    if(_formKey.currentState!.validate()){
                      //                                //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Account Created successfully!")));
                      //                             String uemail = userEmail.text;
                      //                             String upass = userPass.text;
                      //                             FirebaseAuth.instance.createUserWithEmailAndPassword(email: uemail, password: upass);
                      //                           }
                      //   },
                      //   child: Container(
                      //     width: 400,
                      //     height: 60,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(20),
                      //       color: Colors.blueAccent
                      //     ),
                      //     child: const Center(child:  Text("Sign up", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
                      //   ),
                      // )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 80,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    const SizedBox(width: 20),
                    const Text("or continue with", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 20),
                    Container(
                      height: 1,
                      width: 80,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.withOpacity(0.2))
                      ),
                     child: Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent,),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.withOpacity(0.2))
                      ),
                      child: Icon(FontAwesomeIcons.google, color: Colors.red,),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.withOpacity(0.2))
                      ),
                      child: Icon(FontAwesomeIcons.apple),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(fontSize: 20, color: Colors.grey)),
                    SizedBox(width: 10),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
                        },
                        child: Text("Sign in", style: TextStyle(color: Colors.blue, fontSize: 20))
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
