import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../style/style.dart';
import '../../view/sign_in_view/logo_ sign_in_up_view/logo_ sign_in_up_view.dart';
import '../../view/sign_up_view/sign_up_view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController emailConfirm = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: backGround,
            child: Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: shadowColor, blurRadius: 8.sp)
                      ],
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.elliptical(200, 100))),
                  child: const LogoSignInView(
                    title: "SignUp",
                  ),
                ),
                Positioned(
                    top: 36.h,
                    child: SizedBox(
                      width: 100.w,
                      height: 64.h,
                      child: SignUpView(
                        username: username,
                        email: email,
                        emailConfirm: emailConfirm,
                        password: password,
                        formKey: formKey,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    username.dispose();
    emailConfirm.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
