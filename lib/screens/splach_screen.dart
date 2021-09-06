import 'package:flutter/material.dart';
import 'package:screens_asign/screens/cont.dart';
import 'package:screens_asign/screens/login_screen.dart';

class SplachScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplachScreenStete();
  }
}

class _SplachScreenStete extends State<SplachScreen> {
  LoginScreen loginScreen = LoginScreen();
  @override
  void initState() {
    super.initState();
    loginScreen.getValue();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => (LoginScreen.isLogined == null ||
                      LoginScreen.isLogined == false)
                  ? LoginScreen()
                  : Conta()));
    });
    return Scaffold(
      body: Center(
        child: Text(
          'WELCOME',
          style: TextStyle(
              color: Colors.green, fontSize: 46, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
