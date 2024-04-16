import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fNameController = TextEditingController();
    TextEditingController lNameController = TextEditingController();
    TextEditingController userEmailController = TextEditingController();
    TextEditingController userPasswordController = TextEditingController();
    TextEditingController userConfirmPasswordController = TextEditingController();
    TextEditingController userAddressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Navigation Bar",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 20),
          child: Column(
            children: [
              Container(
                child: const Text("Registration Form", style: TextStyle(fontSize: 40)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: fNameController,
                decoration: const InputDecoration(label: Text('First Name'), hintText: 'Enter First Name', suffixIcon: Icon(Icons.abc), iconColor: Colors.blueAccent),
              ),
              TextFormField(
                controller: lNameController,
                decoration: const InputDecoration(label: Text('Last Name'), hintText: 'Enter Last Name', suffixIcon: Icon(Icons.abc), iconColor: Colors.blueAccent),
              ),
              TextFormField(
                controller: userEmailController,
                decoration: const InputDecoration(label: Text('Email'), hintText: 'Enter Your Email', suffixIcon: Icon(Icons.email), iconColor: Colors.blueAccent),
              ),
              TextFormField(
                controller: userPasswordController,
                decoration: const InputDecoration(label: Text('Password'), hintText: 'Enter Password', suffixIcon: Icon(Icons.password), iconColor: Colors.blueAccent),
              ),
              TextFormField(
                controller: userConfirmPasswordController,
                decoration: const InputDecoration(label: Text('Confirm Password'), hintText: 'Enter Confirm Password', suffixIcon: Icon(Icons.password), iconColor: Colors.blueAccent),
              ),
              TextFormField(
                controller: userAddressController,
                decoration: const InputDecoration(label: Text('Address'), hintText: 'Enter Address', suffixIcon: Icon(Icons.location_city)),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  String firstName = fNameController.text;
                  String lastName = lNameController.text;
                  String userEmail = userEmailController.text;
                  String userPass = userPasswordController.text;
                  String userCPass = userConfirmPasswordController.text;
                  String userAddress = userAddressController.text;

                  print(firstName);
                  print(lastName);
                  print(userEmail);
                  print(userPass);
                  print(userCPass);
                  print(userAddress);

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Your Account Successfully Registered!")));
                },
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Register", style: TextStyle(fontSize: 25, color: Colors.white))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

