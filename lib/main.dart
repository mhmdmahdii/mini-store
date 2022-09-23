import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/screens/details_product.dart';
import 'package:store/screens/home_page.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: {
        HomePage.routeName : (context) => HomePage(),
        DetailsProducts.routeName : (context) => DetailsProducts()
      },
      initialRoute: HomePage.routeName,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme()
      ),
      locale: Locale('ar'),
    );
  }
}
