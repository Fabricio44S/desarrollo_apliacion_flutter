import 'package:flutter/material.dart';




class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      title: Text("Avatars"),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.orange,
            child: const Text('MC'),
          ),
        ),

      ],
    ),
      
      
      
      body: Center(child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: NetworkImage('https://image.lexica.art/full_jpg/85fee7a3-4516-4e3a-b798-478aac794e7f',
      ),
       ),
    )
    );
  }
}