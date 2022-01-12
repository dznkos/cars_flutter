import 'package:appcars/components/screen/home/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,      
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[300],
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white
            )
          )
        ),
        home: HomeScreen(),
      ),
      designSize: const Size(360, 640),
    );
  }
}
