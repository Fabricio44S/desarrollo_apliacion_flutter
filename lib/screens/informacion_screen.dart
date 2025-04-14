import 'package:code1/theme/app_theme.dart';
import 'package:code1/widget/custom_card_1.dart';
import 'package:flutter/material.dart';



class Informacion extends StatelessWidget {
  const Informacion({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Material App',
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Material App Bar'),
  //       ),
  //       body: const Center(
  //         child: Text('Hello World'),
  //       ),
  //     ),
  //   );
  // }
    @override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Informaciones de la Carrera')),
body: ListView(
padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
children: const [CustomCardType1()],
),
);
}
}
