import 'package:code1/routes/app_routes.dart';
import 'package:flutter/material.dart';



class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  @override
 
  Widget build(BuildContext context) {
     final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
appBar: AppBar(
title: Text('Portal Ingenieria de Sistemas'),
elevation: 0,
backgroundColor: Colors.deepOrangeAccent[300],
),
body: ListView.separated(
itemCount: 10,
itemBuilder:
(context, index) => ListTile(
leading: Icon(menuOptions[index].icon),
title: Text(menuOptions[index].name),
onTap: () {
  // final route = MaterialPageRoute(
  //   builder:(context) => Biblioteca(),
  // );
  // Navigator.push(context, route);
  Navigator.pushNamed(context,'Biblioteca');
},
),
separatorBuilder: (_, __) => Divider(),
),
);
  }
}