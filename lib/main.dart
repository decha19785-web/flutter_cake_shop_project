import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
 
//---------------------------------
void main() {
  runApp(
    FlutterCakeShopPrject(),
  );
}
 
//---------------------------------
class FlutterCakeShopPrject extends StatefulWidget {
  const FlutterCakeShopPrject({super.key});
 
  @override
  State<FlutterCakeShopPrject> createState() => _FlutterCakeShopPrjectState();
}
 
class _FlutterCakeShopPrjectState extends State<FlutterCakeShopPrject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: GoogleFonts.kanit().fontFamily,
          fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
        ),
      ),
    );
  }
}