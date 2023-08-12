import 'package:earnmoney/bussinus_logic/home_logic/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../../style/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  late HomeLogic cubit;
  late BannerAd bannerAd;
  final String bannerId="ca-app-pub-5105730456209656/1289679404";
  @override
  void initState() {
    cubit = HomeLogic.get(context);
    super.initState();
    bannerAd = BannerAd(
      adUnitId:bannerId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          print('Banner Ad loaded.');
        },
        onAdFailedToLoad: (ad, error) {
          print('Banner Ad failed to load: $error');
        },
      ),
    );
    bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLogic, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backGround,
          key: key,
          appBar: AppBar(
            backgroundColor: backGround,
            elevation: 0,
            title: Image.asset(
              "images/logor.png",
              width: 20.w,
            ),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: InkWell(
                onTap: ()=>cubit.changeActive(1),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.sp,
                  backgroundImage: const AssetImage("images/person.jpg"),
                ),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 2.w),
                width: 20.w,
                height: 4.h,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            "3000",
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 10.sp),
                          ),
                        )),
                    Expanded(child: Image.asset("images/point.png"))
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: InkWell(
            onTap: () => cubit.changeActive(2),
            child: CircleAvatar(
              radius: 24.sp,
              backgroundColor: shadowColor,
              child: Icon(
                Icons.monetization_on_rounded,
                size: 30.sp,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: cubit.iconList,
            backgroundColor: Colors.black45.withOpacity(0.5),
            inactiveColor: const Color(0xffeef1f4),
            activeColor: shadowColor,
            elevation: 10,
            activeIndex: cubit.active,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) => cubit.changeActive(index),
          ),
          extendBody: true,
          body:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(width: bannerAd.size.width.toDouble(),
                height: bannerAd.size.height.toDouble(),
                child: AdWidget(ad: bannerAd),
              ),
              cubit.changePages(),
            ],),
          )


        );
      },
    );
  }
}
