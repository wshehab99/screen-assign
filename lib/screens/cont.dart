import 'package:flutter/material.dart';
import 'package:screens_asign/screens/login_screen.dart';

class Conta extends StatelessWidget {
  LoginScreen loginScreen = LoginScreen();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: ElevatedButton(
        onPressed: () {
          LoginScreen.isLogined = false;
          loginScreen.setValue();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text('logout'),
      ),
    );
  }
}
