import 'package:flutter/material.dart';
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.8), BlendMode.color),
          image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.cover,
        )),
        child: Stack(children: [
          Positioned(
            top: -400,
            left: -100,
            child: Container(
              height: 1000,
              width: 1000,
              decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.5),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 30,
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          child: modified_text(
                              text: 'Register', size: 20, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: modified_text(
                              text: 'Login',
                              size: 20,
                              color: AppColors.primary),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )))
        ]),
      ),
    );
  }
}
