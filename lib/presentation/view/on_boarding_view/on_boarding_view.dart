import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../screens/model/model_on_boarding_data.dart';
import '../../style/style.dart';

class OnBoardingView extends StatelessWidget {
  final OnBoardingData data;
  const OnBoardingView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
            child: Image.asset(data.image)),
        Expanded(

          child:AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                data.title,
                textStyle: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                speed: const Duration(milliseconds: 500),
              ),
            ],
            totalRepeatCount: 5,
            pause: const Duration(milliseconds: 500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 95.w,
            child: Text(
              data.body,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: Colors.white.withOpacity(0.7)),
            ),
          ),
        ),
      ],
    );
  }
}
