import 'package:get/get.dart';

import '../../Screens/Chapters/Chapter-Screen.dart';
import '../../Screens/Choosing/Choosing-Screen.dart';
import '../../Screens/Lessons/lesson-screen.dart';
import '../../Screens/Splash-Screen/SplashView.dart';

import '../../Screens/LogIn/Sign-In-Screen.dart';



class RoutPage{
  static String SplashScreen='/';
  static String LogInScreenView='/Log';
  static String ChapterScreen='/Chapters';
  static String LessonViewScreen='/lessons';
  static String ChoosingViewScreen='/choose';
  static getSplashScreen()=>SplashScreenView;
  static getLogInScreen()=> LogInScreen;
  static getChapterScreen()=> ChaptersScreenView;
  static getLessonViewScreen()=> LessonsScreen;
  static getChoosingViewScreen()=> ChoosingScreen;
  static List<GetPage> routes=[
    GetPage(name: SplashScreen, page: ()=>SplashScreenView()),
    GetPage(name: LogInScreenView , page: ()=> LogInScreen()),
    GetPage(name: ChapterScreen , page: ()=> ChaptersScreenView()),
    GetPage(name: LessonViewScreen , page: ()=> LessonsScreen()),
    GetPage(
      name: ChoosingViewScreen,
      page: () => ChoosingScreen(
        lessonImage: Get.arguments['lessonImage'] ?? '',
      ),
    ),
  ];
}