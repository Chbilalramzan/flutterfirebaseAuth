import 'package:flutter/material.dart';
import 'package:loginsignup/styles/app_colors.dart';
import 'package:loginsignup/screens/signup.dart';
import 'package:loginsignup/widgets/custom_button.dart';
import 'package:loginsignup/widgets/custom_formfield.dart';
import 'package:loginsignup/widgets/custom_header.dart';
import 'package:loginsignup/widgets/custom_richtext.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.blue,
          ),
          CustomHeader(
            text: 'Log In.',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteshade,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    child: Image.asset("assets/images/login.png"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomFormField(
                    headingText: "Email",
                    hintText: "Email",
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    controller: _emailController,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    headingText: "Password",
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    hintText: "At least 8 Character",
                    obsecureText: true,
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility), onPressed: () {}),
                    controller: _passwordController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: AppColors.blue.withOpacity(0.7),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  AuthButton(
                    onTap: () {},
                    text: 'Sign In',
                  ),
                  CustomRichText(
                    discription: "Don't already Have an account? ",
                    text: "Sign Up",
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
