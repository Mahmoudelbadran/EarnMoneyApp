import 'package:earnmoney/bussinus_logic/login_register_logic/login_register_logic.dart';
import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../view/sign_in_view/logo_ sign_in_up_view/logo_ sign_in_up_view.dart';
import '../../view/sign_in_view/sign_in_view.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginAndRegisterLogic, LoginAndRegisterState>(
  builder: (context, state) {
    return Scaffold(
      key: key,
      backgroundColor: backGround,
      body: SafeArea(
        child: Container(
          width: 100.w,
          height: 100.h,
          color: backGround,
          child: Stack(
            children: [
              Container(
                width: 100.w,
                height: 35.h,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: shadowColor,blurRadius: 8.sp)],
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.elliptical(200, 100))),
                child:const LogoSignInView(title: "Login",) ,
              ),
              Positioned(
                  top:36.h,
                  child: SizedBox(
                    width: 100.w,
                    height: 64.h,
                   child:  SignInView(username: username,password: password, formKey: formKey,),
                  ))
            ],
          ),
        ),
      ),
    );
  },
);
  }
  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
