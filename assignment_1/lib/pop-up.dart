import 'package:flutter/material.dart';
import 'package:achievement_view/achievement_view.dart';

class PubDevPackage extends StatefulWidget {
  const PubDevPackage({super.key});

  @override
  State<PubDevPackage> createState() => _PubDevPackageState();
}

class _PubDevPackageState extends State<PubDevPackage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userEmail = TextEditingController();
    TextEditingController userPass = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
             TextFormField(
               controller: userEmail,
               decoration: const InputDecoration(
                 label: Text("Email"),
                 hintText: "Enter user email...",
                 prefixIcon: Icon(Icons.email)
               ),
             ),
              TextFormField(
                controller: userPass,
                decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter password...",
                    prefixIcon: Icon(Icons.password_sharp)
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                String email = userEmail.text;
                String pass = userPass.text;
                print(email);
                print(pass);
                showAchievementView(context);
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: Text("Login", style: TextStyle(fontSize: 15, color: Colors.white))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showAchievementView(BuildContext context){
  AchievementView(
      title: "Login Successful!",
      subTitle: "Training completed successfully",
      //content: Widget()
      //onTab: _onTabAchievement,
      icon: const Icon(Icons.insert_emoticon, color: Colors.white,),
      //typeAnimationContent: AnimationTypeAchievement.fadeSlideToUp,
      //borderRadius: 5.0,
      color: Colors.green,
      //textStyleTitle: TextStyle(),
      //textStyleSubTitle: TextStyle(),
      alignment: Alignment.topCenter,
      duration: Duration(seconds: 3),
      //isCircle: false,
      listener: (status){
        //print(status);
        //AchievementState.opening
        //AchievementState.open
        //AchievementState.closing
        //AchievementState.closed
      }
  ).show(context);
}