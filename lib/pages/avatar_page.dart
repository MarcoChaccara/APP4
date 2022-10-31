import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage("assets/images/loading.gif"),
              image: NetworkImage("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"), 
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 1300),
            ),
            
          ],
        ),
      )
    
    );
  }
}