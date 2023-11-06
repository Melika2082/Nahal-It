import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_menu_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // تعریف تم برنامه
        theme: ThemeData(
          fontFamily: 'Sahel',
          // تعریف رنگ اصلی برنامه
          primaryColor: const Color.fromARGB(255, 60, 158, 22),
        ),
        // تعریف صفحه اصلی برنامه
        home: const HomeScreen(),
      ),
    );
  }
}
