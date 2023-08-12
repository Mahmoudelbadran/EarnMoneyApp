import 'package:earnmoney/bussinus_logic/person_logic/person_logic.dart';
import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ImageProfileView extends StatelessWidget {
  const ImageProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late PersonLogic cubit = PersonLogic();
    return BlocBuilder<PersonLogic, PersonState>(
      builder: (context, state) {
        return SizedBox(
            width: 100.w,
            height: 30.h,
            child: Center(
                child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 60.sp,
                  backgroundImage: const AssetImage("images/person.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                IconButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            width: 100.w,
                            height: 10.h,
                            color: backGround,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Expanded(child: InkWell(
                                onTap:cubit.getFromCamera,
                                  child: SvgPicture.asset("images/camera.svg",width: 25.w,height: 10.h,))),
                                Expanded(child: InkWell(
                                  onTap:cubit.getFromGallery,
                                    child: SvgPicture.asset("images/gallery.svg",width: 25.w,height: 10.h,)))
                            ],),

                          );
                        });
                  },
                  icon: const Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  ),
                )
              ],
            )));
      },
    );
  }
}
