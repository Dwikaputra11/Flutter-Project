import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FocusNode emailInput = FocusNode();
  FocusNode passInput = FocusNode();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  void _passwordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _confirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 30),
                child: SvgPicture.asset('lib/assets/img/sign_up.svg'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Sign Up',
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
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    hintText: 'Email ID',
                    hintStyle: const TextStyle(
                        color: Color(0xFFC4C4C4), fontWeight: FontWeight.w400),
                    icon: SvgPicture.asset('lib/assets/img/tugas12/email.svg'),
                    // prefixIcon: SvgPicture.asset('assets/img/tugas12/email.svg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  // focusNode: passInput,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: const Color(0xFFC4C4C4),fontWeight: FontWeight.w400),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    // hintText: 'Password',
                    // hintStyle: const TextStyle(
                    //     color: Color(0xFFC4C4C4), fontWeight: FontWeight.w400),
                    icon:
                        SvgPicture.asset('lib/assets/img/tugas12/password.svg'),
                    suffixIcon: IconButton(
                      onPressed: _passwordVisibility,
                      icon: _isPasswordVisible
                          ? const Icon(Icons.visibility_rounded)
                          : const Icon(Icons.visibility_off_rounded),
                      color: const Color(0xFFC5C5C5),
                    ),
                    // prefixIcon: SvgPicture.asset('assets/img/tugas12/email.svg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: !_isConfirmPasswordVisible,
                  // focusNode: passInput,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                        color: Color(0xFFC4C4C4), fontWeight: FontWeight.w400),
                    icon:
                        SvgPicture.asset('lib/assets/img/tugas12/password.svg'),
                    suffixIcon: IconButton(
                      onPressed: _confirmPasswordVisibility,
                      icon: _isConfirmPasswordVisible
                          ? const Icon(Icons.visibility_rounded)
                          : const Icon(Icons.visibility_off_rounded),
                      color: const Color(0xFFC5C5C5),
                    ),
                    // prefixIcon: SvgPicture.asset('assets/img/tugas12/email.svg'),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: RichText(
                    text: TextSpan(
                      text: 'By signing up, you’re agree to our ',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms and Conditions ',
                          style: const TextStyle(
                            color: Color(0xFF000AFF),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.of(context).pushNamed('/login'),
                        ),
                        const TextSpan(
                          text: 'And ',
                          style: const TextStyle(
                            color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: const TextStyle(
                            color: Color(0xFF000AFF),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.of(context).pushNamed('/login'),
                        ),
                      ],
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
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFA994FF)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.grey)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/user-profile-input');
                      },
                      child: const Text(
                        'Sign Up',
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
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: const <Widget>[
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
                        textStyle: const TextStyle(color: Color(0xFF797979)),
                        backgroundColor: const Color(0xFFF8F8F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () => {},
                      icon:
                          SvgPicture.asset('lib/assets/img/tugas12/google.svg'),
                      label: const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            color: Color(0xFF797979),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Join us before? ',
                      style: const TextStyle(
                        color: Color(0xFF797979),
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.of(context).pushNamed('/login'),
                        )
                      ],
                    ),
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
