import 'package:code1/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTarjeta1 extends StatelessWidget {
  const CustomTarjeta1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.add_ic_call_outlined, color:AppTheme.primaryColor ,),
            title: Text('Tajeta 1'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Enviar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}