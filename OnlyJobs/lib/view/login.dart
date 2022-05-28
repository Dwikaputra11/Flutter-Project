import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_flutter/view/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    FocusNode emailInput = FocusNode();
    FocusNode passInput = FocusNode();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 30),
                child: SvgPicture.asset('assets/img/tugas12/login.svg'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Login',
                  style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  // focusNode: emailInput,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    hintText: 'Email ID',
                    hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontWeight: FontWeight.w400
                    ),
                    icon: SvgPicture.asset('assets/img/tugas12/email.svg'),
                    // prefixIcon: SvgPicture.asset('assets/img/tugas12/email.svg'), 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  // focusNode: passInput,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontWeight: FontWeight.w400
                    ),
                    icon: SvgPicture.asset('assets/img/tugas12/password.svg'),
                    suffixIcon: SvgPicture.asset('assets/img/tugas12/not_visible.svg')
                    // prefixIcon: SvgPicture.asset('assets/img/tugas12/email.svg'), 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child:Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFFAEAEAE),
                      fontWeight: FontWeight.w700, 
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFA994FF)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.grey)
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/home');
                      }, 
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                    Text('OR', style: (TextStyle(color: Color(0XFFAEAEAE)))),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(color: Color(0xFF797979)),
                        backgroundColor: Color(0xFFF8F8F8),
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ), 
                      ),
                      onPressed: () => {},
                      icon: SvgPicture.asset('assets/img/tugas12/google.svg'),
                      label: Text('Login with Google',style: TextStyle(color: Color(0xFF797979), fontSize: 14,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New to OnlyJobs?',
                        style: TextStyle(color: Color(0xFF8D8D8D)),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFFA28CFD),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}