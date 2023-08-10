import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourapplication/const/app_color.dart';
import 'package:tourapplication/const/app_strings.dart';
import 'package:tourapplication/ui/route/route.dart';
import 'package:tourapplication/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // responsive kaj korar jonno ScreenUtils use krchi
    return ScreenUtilInit(
      designSize: Size(428, 926), // figma screen size
      builder: (BuildContext, Widget) {
        // GetMaterialApp use krchi Getx a kaj krar jnno

        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppsString.AppName, //const string
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              //use google font
              Theme.of(context).textTheme.apply(),
            ),
            scaffoldBackgroundColor: AppsColor.ScaffoldColor,
          ),
          initialRoute: splash,
          getPages: getpages,
          home: SplashScreen(),
        );
      },
    );
  }
}
