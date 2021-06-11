import 'package:flutter/material.dart';
import 'package:indeedappui/components/auth/components.dart';
import 'package:indeedappui/pages/auth/login.dart';
import 'package:indeedappui/pages/auth/register.dart';
import 'package:indeedappui/utils/colors.dart';
import 'package:indeedappui/utils/text.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover)),
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 30,
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Logo(),
                      SizedBox(height: 20),
                      Container(
                        child: bolded_text(
                            text: 'Welcome Back',
                            size: 34,
                            color: Colors.grey.shade900),
                      ),
                      Container(
                        child: modified_text(
                            text: 'Company Moto will go over here.',
                            size: 18,
                            color: Colors.grey.shade900),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: modified_text(
                                    size: 18,
                                    text: 'Register',
                                    color: Colors.white))),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
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
                    ],
                  )))
        ]),
      ),
    );
  }
}
