import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(177, 148, 112, 1),
        borderRadius: BorderRadius.circular(50)
        
        ),
      child: const Center(
        child:Text("Login",
        style: TextStyle(color: Colors.white, fontFamily: 'Judson', fontSize: 16, fontWeight: FontWeight.bold),
        )
      ),
      )
    );
  }
}
