import 'package:earnmoney/presentation/screens/home_user_screen/home_user_screen.dart';
import 'package:earnmoney/presentation/screens/profile_screen/profile_screen.dart';
import 'package:earnmoney/presentation/screens/without_screen/without_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
part 'home_state.dart';
class HomeLogic extends Cubit<HomeState> {
  HomeLogic() : super(AppIntialStates());

  static HomeLogic get(context) => BlocProvider.of<HomeLogic>(context);
  List<IconData> iconList = [
    Icons.swap_horiz,
    Icons.person_outline,
  ];
  List<Widget> pages=[
    const WithoutScreen(),
    const ProfileScreen(),
    const HomeUserScreen()
  ];
  int active=2;
  void changeActive(int x){
    active=x;
    emit(ChangeActive());
  }
  Widget changePages(){
   return pages.elementAt(active);
  }
  Future<void> share() async {
    await FlutterShare.share(
        title: 'share Free Luke',
        text: 'Share FreeLuke of the Friends.',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'this my app:'
    );
    emit(ShareState());
  }



}