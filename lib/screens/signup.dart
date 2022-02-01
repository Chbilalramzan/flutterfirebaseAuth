import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginsignup/styles/app_colors.dart';
import 'package:loginsignup/screens/signin.dart';
import 'package:loginsignup/widgets/custom_header.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
          CustomHeader(text: 'Sign Up.', onTap: () {}),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteshade,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
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
                  // InputField(headerText: "Username", hintTexti: "Username"),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // InputField(
                  //     headerText: "Email", hintTexti: "dion@example.com"),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // InputFieldPassword(
                  //   headerText: "Password",
                  //   hintTexti: "At least 8 Charecter",
                  // ),
                  // const CheckerBox(),
                  InkWell(
                    onTap: () {
                      print("Sign up click");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: const BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteshade),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.18,
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Text.rich(
                      TextSpan(
                          text: "I already Have an account ",
                          style: TextStyle(
                              color: AppColors.grayshade.withOpacity(0.8),
                              fontSize: 16),
                          children: [
                            TextSpan(
                                text: "Sign In",
                                style: TextStyle(
                                    color: AppColors.blue, fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Signin()));
                                    print("Sign in click");
                                  }),
                          ]),
                    ),
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

// // ignore: must_be_immutable
// class InputField extends StatelessWidget {
//   String headerText;
//   String hintTexti;
//   InputField({Key? key, required this.headerText, required this.hintTexti})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(
//             left: 20,
//             right: 20,
//             bottom: 10,
//           ),
//           child: Text(
//             headerText,
//             style: const TextStyle(
//                 color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.only(left: 20, right: 20),
//             decoration: BoxDecoration(
//               color: grayshade.withOpacity(0.5),
//               // border: Border.all(
//               //   width: 1,
//               // ),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: hintTexti,
//                   border: InputBorder.none,
//                 ),
//               ),
//             )
//             //IntrinsicHeight

//             ),
//       ],
//     );
//   }
// }

// class InputFieldPassword extends StatefulWidget {
//   String headerText;
//   String hintTexti;

//   InputFieldPassword(
//       {Key? key, required this.headerText, required this.hintTexti})
//       : super(key: key);

//   @override
//   State<InputFieldPassword> createState() => _InputFieldPasswordState();
// }

// class _InputFieldPasswordState extends State<InputFieldPassword> {
//   bool _visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(
//             left: 20,
//             right: 20,
//             bottom: 10,
//           ),
//           child: Text(
//             widget.headerText,
//             style: const TextStyle(
//                 color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 20, right: 20),
//           decoration: BoxDecoration(
//             color: grayshade.withOpacity(0.5),
//             // border: Border.all(
//             //   width: 1,
//             // ),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//             child: TextField(
//               obscureText: _visible,
//               decoration: InputDecoration(
//                   hintText: widget.hintTexti,
//                   border: InputBorder.none,
//                   suffixIcon: IconButton(
//                       icon: Icon(
//                           _visible ? Icons.visibility : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _visible = !_visible;
//                         });
//                       })),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
