
import 'package:flutter/material.dart';

class Card3Page extends StatelessWidget {
  const Card3Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomCardType3')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: CustomCardType3(),
      ),
    );
  }
}

class CustomCardType3 extends StatelessWidget {
  const CustomCardType3({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(height: 12),
              Text(
                'Cargando...',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
