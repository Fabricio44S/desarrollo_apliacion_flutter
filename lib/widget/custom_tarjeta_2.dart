import 'package:flutter/material.dart';

class CustomTarjeta2 extends StatelessWidget {
  final String imageUrl;
  const CustomTarjeta2({super.key, required this.imageUrl});
  

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
),
      child: Column(
        children: [
          Text('data'),
         FadeInImage (image: NetworkImage( imageUrl,
          ), 
          placeholder: AssetImage('assets/images/imagen1.jpg'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
      fadeInDuration: Duration(milliseconds: 800),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Albert Einstein fue un fisico aleman de origen judio'),
          ),
        ],
        ),
    );


  }
}







    // Card(
    //   elevation: 10,
    //   child: Column(
    //     children: [
    //       Text('data'),
    //      FadeInImage (image: NetworkImage( imageUrl,
    //       ), 
    //       placeholder: AssetImage('assets/images/imagen1.jpg'),
    //       width: double.infinity,
    //       height: 230,
    //       fit: BoxFit.cover,
    //   fadeInDuration: Duration(milliseconds: 800),
    //       ),
    //       Container(
    //         alignment: AlignmentDirectional.center,
    //         padding: EdgeInsets.only(bottom: 10),
    //         child: Text('Albert Einstein fue un fisico aleman de origen judio'),
    //       ),
    //     ],
    //     ),
    // );



    // ListView(
    //   padding: EdgeInsets.all(16),
    //   children: [
    //     // 1. Tarjeta con esquinas redondeadas
    //     Card(
    //       clipBehavior: Clip.antiAlias,
    //       elevation: 6,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(16),
    //       ),
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Bordes Redondeados',
    //             ),
    //           ),
    //           FadeInImage(
    //             image: NetworkImage(imageUrl),
    //             placeholder: AssetImage('assets/images/imagen1.jpg'),
    //             width: double.infinity,
    //             height: 200,
    //             fit: BoxFit.cover,
    //             fadeInDuration: Duration(milliseconds: 800),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Tarjeta con forma de rectángulo redondeado usando shape y clipBehavior.',
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 16),

    //     // 2. Tarjeta con forma ovalada (Stadium)
    //     Card(
    //       clipBehavior: Clip.antiAlias,
    //       elevation: 6,
    //       shape: StadiumBorder(),
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Forma Ovalada',
               
    //             ),
    //           ),
    //           FadeInImage(
    //             image: NetworkImage(imageUrl),
    //             placeholder: AssetImage('assets/images/imagen1.jpg'),
    //             width: double.infinity,
    //             height: 200,
    //             fit: BoxFit.cover,
    //             fadeInDuration: Duration(milliseconds: 800),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Tarjeta con shape StadiumBorder para bordes ovalados.',
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 16),

    //     // 3. Tarjeta con intensidad de iluminación (elevación y color de sombra)
    //     Card(
    //       clipBehavior: Clip.antiAliasWithSaveLayer,
    //       elevation: 12,
    //       shadowColor: Colors.blueAccent,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(24),
    //       ),
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Alta Elevación & Color de Sombra',
    //             ),
    //           ),
    //           FadeInImage(
    //             image: NetworkImage(imageUrl),
    //             placeholder: AssetImage('assets/images/imagen1.jpg'),
    //             width: double.infinity,
    //             height: 200,
    //             fit: BoxFit.cover,
    //             fadeInDuration: Duration(milliseconds: 800),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               'Sombra azul intenso y elevación mayor para resaltar la iluminación.',
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );