import 'package:flutter/material.dart';
import 'package:indeedappui/components/auth/components.dart';
import 'package:indeedappui/utils/colors.dart';
import 'package:indeedappui/utils/text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  var email = '';
  var pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover)),
        padding: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: bolded_text(
                    text: 'Login', size: 34, color: Colors.grey.shade900),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    cursorColor: AppColors.primary,
                    decoration:
                        InputDecoration(hintText: 'Enter Email Address'),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Incorrect Email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  )),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    cursorColor: AppColors.primary,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Enter Password'),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Incorrect Password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      pass = value.toString();
                    },
                  )),
              SizedBox(height: 30),
              InkWell(
                child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primary),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: modified_text(
                            size: 18,
                            text: 'Login',
                            color: AppColors.primary))),
              ),
            ]),
      ),
    );
  }
}
