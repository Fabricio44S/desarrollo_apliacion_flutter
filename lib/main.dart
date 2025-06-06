import 'package:code1/routes/app_routes.dart';
import 'package:code1/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',

      //home: HomeScreem(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      // onGenerateRoute: (setting){
      //   return MaterialPageRoute(builder: (context) => Biblioteca());
      // },
      // Navigator.pushNamed(context, menuOptions[index].route);

    );
  }
}

