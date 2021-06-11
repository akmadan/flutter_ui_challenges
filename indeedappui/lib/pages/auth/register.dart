import 'package:flutter/material.dart';
import 'package:indeedappui/components/auth/components.dart';
import 'package:indeedappui/utils/colors.dart';
import 'package:indeedappui/utils/text.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    AppColors.primary.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover)),
        padding: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: bolded_text(
                    text: 'Register', size: 34, color: Colors.grey.shade900),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Enter Username'),
                  )),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration:
                        InputDecoration(hintText: 'Enter Email Address'),
                  )),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Enter Password'),
                  )),
              SizedBox(height: 30),
              InkWell(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => Login()));
                // },
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
                            text: 'Register',
                            color: AppColors.primary))),
              ),
            ]),
      ),
    );
  }
}
