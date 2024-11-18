import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "tariq@gmail.com";

  String password = "112233";

  TextEditingController controller = TextEditingController();

  TextEditingController controller2 = TextEditingController();

  bool islogin =false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: "email", border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: "password", border: OutlineInputBorder())),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (controller.text == email &&
                    controller2.text == password) {
setState(() {
   islogin=true;
});                }
else{
  setState(() {
   islogin=false;
}); 
}
                
              },
              child: Text("LOGIN"),
            ),
            if(islogin)
            Text("WELOCOME")
          ],
        ),
      )),
    );
  }
}