import 'package:appcars/components/screen/detalle/detalle_car.dart';
import 'package:appcars/components/screen/home/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
        routes: {
          //"detallecar": (BuildContext context) => DetalleCar(itemCar: null,),
        },
        debugShowCheckedModeBanner: false,      
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF770e0e),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
            headline2: GoogleFonts.monda(textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white
            )),
             bodyText1: GoogleFonts.gruppo(textStyle: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: 4
            ))
          )
        ),
        home: HomeScreen(),
      ),
      designSize: const Size(360, 640),
    );
  }
}
