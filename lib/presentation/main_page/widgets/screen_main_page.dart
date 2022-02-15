import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone_app/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone_app/presentation/home/screen_home.dart';
import 'package:netflix_clone_app/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_app/presentation/search/screen_search.dart';

class ScreenMainPAge extends StatelessWidget {
   ScreenMainPAge({Key? key}) : super(key: key);
  final _pages=[
ScreenHome(),
ScreenNewAndHot(),
ScreenFastLaugh(),
ScreenSearch(),
ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgrondColor,
      body: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index,_) {
        return _pages[index];
        
      },),
         bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
