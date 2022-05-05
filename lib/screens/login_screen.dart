import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Auth_ui.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: Column(
        children: [
          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 100,),
                Image.asset('assets/images/shopping-cart.png',
                  color: Colors.deepPurple.shade900,
                ),
                SizedBox(height: 10,),
                Text('Zone',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade900
                ),)
              ],
            ),
          ),),
          Expanded(
            child: Container(
              child: AuthUi(),
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('If you continue, you are accepting\n Terms and Conditions and Privacy Policy',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,
            fontSize: 10),),
          )
        ],


      ),
    );
  }
}
