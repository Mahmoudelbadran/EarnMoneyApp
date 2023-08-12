import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemPaymentView extends StatelessWidget {
  final TextEditingController payment;
  final TextEditingController count;
  const ItemPaymentView({Key? key, required this.payment, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: backGround,
              title: Text('Vodafone Cash',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.white),),
              content: SizedBox(
                width: 100.w,
                height: 25.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Padding(
                     padding:  EdgeInsets.all(10.sp),
                     child: Text('Enter Number or Email:',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 13.sp),),
                   ),
                    TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return 'number or email can\'t Empty';
                        } else if (text.length < 10) {
                          return "You must put more than 6 numbers or Text here";
                        } else {
                          return null;
                        }
                      },
                      controller: payment,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          label: const Text("Email or number"),
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

                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Color(0xffeef1f4)),
                              borderRadius: BorderRadius.circular(25))),
                      style: const TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top:2.h),
                      child: TextFormField(
                        validator: (text) {
                          if (text!.isEmpty) {
                            return 'number  can\'t Empty';
                          }  else {
                            return null;
                          }
                        },
                        controller: count,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            label: const Text("Count Point"),
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
                            suffixIcon:
                            Image.asset("images/point.png",width: 10.w,),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Color(0xffeef1f4)),
                                borderRadius: BorderRadius.circular(25))),
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                ],),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:  Text('Close',style: TextStyle(color: Colors.redAccent,fontSize: 12.sp),),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:  Text('Send',style: TextStyle(color: Colors.green,fontSize: 12.sp),),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.all(10.sp),
        width: 70.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.sp),
          child: Image.asset("images/voda.jpg", fit: BoxFit.fill),
        ),
      ),
    );
  }
}
