import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/artBoard/artBoard_view.dart';
import 'package:hackathon/ui/authentication/login/login_view.dart';
import 'package:hackathon/ui/authentication/signUp/signup_view.dart';
import 'package:hackathon/ui/navbar/custom_navbar_view.dart';
import 'package:hackathon/ui/onBoard/onBoard_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: MyColors.primaryLight,
      scaffoldBackgroundColor: MyColors.backGroundLight,
    );

    // Create a dark theme using the constants
    final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: MyColors.primaryDark,
      scaffoldBackgroundColor: MyColors.backGroundDark,

    );
    return GetMaterialApp(
      title: 'Hackathon',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // Theme.of(context).primaryColor;
      home:ArtBoard() ,
      // home: OnBoardView(),
      // home: LoginView(),
      // home: SignUpView(),
      // home: CustomNavbar(),

    );
  }
}
