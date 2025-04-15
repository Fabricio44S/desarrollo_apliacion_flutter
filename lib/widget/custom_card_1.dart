import 'package:code1/theme/app_theme.dart';
import 'package:flutter/material.dart';
class CustomCardType1 extends StatelessWidget {
const CustomCardType1({super.key});
@override
Widget build(BuildContext context) {
return Card(
child: Column(
children: [
ListTile(
leading: Icon(Icons.photo_album_outlined, color: AppTheme2.primary), // Cambia el color del icono
title: const Text('Inauguración Año Deportivo'),
subtitle: const Text(
'Exercitation id ullamco esse nostrud culpa minim dolore aliquip culpaaute tempor est nulla mollit.',
),
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
TextButton(onPressed: () {}, child: const Text('Ingresar')),
TextButton(onPressed: () {}, child: const Text('Eliminar')),
],
),
),
],
),
);
}
}