import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unibit/screens/auth/components/custom_button.dart';
import 'package:unibit/screens/auth/components/custom_textfeild.dart';
import 'package:unibit/screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Center(child: Image.asset("assets/images/game.png")))),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextfield("Mobile Number"),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextfield("Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Color(0xffFF8822),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => const MainScreen());
                      },
                      child: customButton(context, "Login")),
                  const SizedBox(
                    height: 30,
                  ),
                  customButton(context, "Login with OTP"),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                          children: <TextSpan>[
                        TextSpan(
                            text: "Sign Up now",
                            style: TextStyle(
                                color: Color(0xffFF8B22),
                                fontSize: 14,
                                fontWeight: FontWeight.w500))
                      ]))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
