import 'package:flutter/material.dart';
import 'package:wastenotfeast/components/textfield.dart';
import 'package:wastenotfeast/components/button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //login user method
  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/assets/bg_rev.png"),fit: BoxFit.cover,),),
        child: Center(
          child: Column(
            children: [
              
              const SizedBox(height: 0),

              //Logo
              Image(
                image: AssetImage("lib/assets/Logo_wh.png"),
                height: 280,
                width: 280,
              ),

              const SizedBox(height: 0),

              Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(15),
        
              ),
              child: Column(
                children: [
                const SizedBox(height: 50),


                                
              //TextField Username
                MyTextField(
                controller: usernameController,
                
                hintText: '     Username',
                obscureText: false,
              ),

              const SizedBox(height:20),

              //TextField Password
              MyTextField(
                controller: passwordController,
                hintText: '     Password',
                obscureText: true,
              ),

              const SizedBox(height: 50),

              //Button Login
              MyButton(
                onTap: loginUser,
              ),

              const SizedBox(height: 50),

              //Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not registered yet?",
                  style: TextStyle(color: Color.fromARGB(255, 23, 23, 23), fontFamily: 'Judson'),
                  ),
                  const SizedBox(width: 4),
                  const Text("Register now", 
                  style: TextStyle(
                    color: Colors.blue, fontFamily: 'Judson', fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              const SizedBox(height: 30),
                ],
              )    
              ),
            ],
          ),
        ),
      ),
    );
  }
}
