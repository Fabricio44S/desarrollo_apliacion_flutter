import 'package:code1/widget/custom_tarjeta_1.dart';
import 'package:flutter/material.dart';
import '../widget/custom_tarjeta_2.dart';


// void main() => runApp(const MyApp());

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen -  Widget'),
        ),
        body: ListView(
          // padding: EdgeInsets.symmetric(),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //theme: AppTheme2.lightTheme,
          children: [
            CustomTarjeta1(),
             CustomTarjeta2(
              imageUrl: 'https://cdn.pixabay.com/photo/2024/04/08/18/23/ai-generated-8684145_1280.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

// class CustomTarjeta1 extends StatelessWidget {
//   const CustomTarjeta1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
    
//       child: Column(
//         children: [
//           ListTile(
//             leading: Icon(Icons.add_ic_call_outlined),
//             title: Text('Tajetas 1'),
//             subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris.'),
//           ),
//         ],
//       ),
//     );
//   }
// }