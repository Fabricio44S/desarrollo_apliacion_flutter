import 'package:code1/theme/app_theme.dart';
import 'package:code1/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Card2Page extends StatelessWidget {
  final String imageUrl;
  const Card2Page({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomCardType2')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomCardType2(imageUrl: imageUrl),
      ),
    );
  }
}

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  const CustomCardType2({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // para que la imagen respete el borde
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(imageUrl),
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          ListTile(
            leading: Icon(Icons.image, color: AppTheme.primaryColor),
            title: const Text('Título de la imagen'),
            subtitle: const Text('Descripción breve de la imagen.'),
          ),
          ButtonBar(
            children: [
              TextButton(onPressed: () {}, child: const Text('Ver')),
              TextButton(onPressed: () {}, child: const Text('Compartir')),
            ],
          ),
        ],
      ),
    );
  }
}
