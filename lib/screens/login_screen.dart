import 'package:flutter/material.dart';
import 'package:screens_asign/screens/cont.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  static bool? isLogined = false;
  TextEditingController? name;
  TextEditingController? password;
  var formKey = GlobalKey<FormState>();
  SharedPreferences? prefs;
  Future setValue() async {
    prefs = await SharedPreferences.getInstance();
    prefs!.setBool('login', isLogined!);
    print('value set');
  }

  Future getValue() async {
    prefs = await SharedPreferences.getInstance();
    print('value get');
    isLogined = prefs!.getBool('login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) return 'usre name is required';
                    },
                    onSaved: (String? value) {
                      name!.text = value!;
                    },
                    controller: name,
                    decoration: InputDecoration(labelText: 'User name'),
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) return 'password is required';
                    },
                    controller: password,
                    onSaved: (String? value) {
                      password!.text = value!;
                    },
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Conta()));
                        }
                        isLogined = true;
                        setValue();
                      },
                      child: Text('login'))
                ],
              )),
        ],
      ),
    );
  }
}
