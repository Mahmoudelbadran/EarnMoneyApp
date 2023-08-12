import 'package:earnmoney/bussinus_logic/login_register_logic/login_register_logic.dart';
import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../core/chang_page/change_pages.dart';
import '../../widget/default_material_button.dart';

class SignInView extends StatelessWidget {
  final TextEditingController username;
  final TextEditingController password;
  final GlobalKey<FormState> formKey;
  const SignInView(
      {Key? key,
      required this.username,
      required this.password,
      required this.formKey,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late LoginAndRegisterLogic cubit = LoginAndRegisterLogic.get(context);
    return BlocBuilder<LoginAndRegisterLogic, LoginAndRegisterState>(
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SizedBox(
            width: 100.w,
            height: 100.h,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return 'username can\'t Empty';
                        } else {
                          return null;
                        }
                      },
                      controller: username,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          label: const Text("UserName"),
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffeef1f4)),
                              borderRadius: BorderRadius.circular(25))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return 'password can\'t Empty';
                        } else if (text.length < 6) {
                          return "You must put more than 6 numbers here";
                        } else {
                          return null;
                        }
                      },
                      controller: password,
                      obscureText: cubit.isHidden,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          label: const Text("Password"),
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          suffixIcon: IconButton(
                            onPressed:()=>cubit.showPassword(),
                            icon: Icon(cubit.surFixIcons,color: Colors.white,),
                          ),
                          prefixIcon:
                              const Icon(Icons.key, color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffeef1f4)),
                              borderRadius: BorderRadius.circular(25))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    padding: EdgeInsets.only(left: 65.w, bottom: 1.h),
                    child: InkWell(
                      onTap: () {},
                      child: Text("Forget password?",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: shadowColor,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Container(
                      width: 100.w,
                      padding: EdgeInsets.only(left: 2.w, bottom: 1.h),
                      child: Row(
                        children: [
                          Text("If you do not have an account,",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, signUpScreen);
                            },
                            child: Text("click here",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: shadowColor,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      )),
                  DefaultMaterialButton(
                    width: 95.w,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, homeScreen, (route) => false);
                      }
                    },
                    backgroundColor: Colors.white,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: backGround,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
