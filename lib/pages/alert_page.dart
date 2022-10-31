import 'package:app04_componentes/pages/avatar_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert1(BuildContext context1){
    showDialog(
      context: context1,
      builder: (BuildContext context1){
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.grey,
          content: Text(
            "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context1);
                Navigator.pop(context1);
              }, 
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context1);
              }, 
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
  showMyAlert2(BuildContext context2){
    showDialog(
      context: context2,
      builder: (BuildContext context2){
        return AlertDialog(
          
          title: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/foto.jpeg",
            ),
          ),
          backgroundColor: Colors.grey,
          content: Text(
            "This blog post has been published . Team members will be able to edit this post and republish changes ."),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context2);
                Navigator.pop(context2);
              }, 
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context2);
              }, 
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
  showMyAlert3(BuildContext context3){
    showDialog(
      context: context3,
      builder: (BuildContext context3){
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.grey,
          content: Text(
            "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context3);
                Navigator.pop(context3);
              }, 
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context3);
              }, 
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: (){
                showMyAlert1(context);
              }, 
              child: Text("Alert1")
            ),
            ElevatedButton(
              onPressed: (){
                showMyAlert2(context);
              }, 
              child: Text("Alert2")
            ),
            ElevatedButton(
              onPressed: (){
                showMyAlert3(context);
              }, 
              child: Text("Alert3")
            ),
            
          ]
        ),
      ),
    );
  }
}