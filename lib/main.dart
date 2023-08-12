import 'package:earnmoney/bussinus_logic/login_register_logic/login_register_logic.dart';
import 'package:earnmoney/presentation/router/app_router.dart';
import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

import 'bussinus_logic/home_logic/home_logic.dart';
import 'bussinus_logic/person_logic/person_logic.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HomeLogic()
            ),
            BlocProvider(
                create: (context) => LoginAndRegisterLogic()
            ),
            BlocProvider(
                create: (context) => PersonLogic()
            ),

          ],
          child: MaterialApp(
            color: backGround,
            title: 'Mr Money',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
              useMaterial3: false,
            ),
            onGenerateRoute: appRouter.onGenerateRoute,
          ),
        );
      },
    );
  }
}
