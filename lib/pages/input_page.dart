import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget{
  const InputPage({super.key});
 @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.amber,
        title : Text("Input Page"),
      ) , // Appar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [

//TextField 1
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre completo",
                label: Text("Nombre Completo"),
                icon: Icon(Icons.check_box_rounded),
                suffixIcon: Icon(Icons.location_city_rounded),
                prefixIcon: Icon(Icons.abc),
              ),
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),

//TextField 2            
            TextField(
              decoration: InputDecoration(
                hintText : " Buscar productos " ,
                prefixIcon: Icon ( Icons.search ) ,
                focusedBorder : OutlineInputBorder (
                  borderSide : BorderSide (
                    color : Colors.deepPurple ,
                    width : 3.0 ,
                  ),
                  borderRadius: BorderRadius.circular ( 20.0 ) ,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), 
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 5.0,
                  ),
                ),
              ),
              onChanged: (String value){
                print(value);
              },
            ),
            SizedBox(
              height: 20,
            ),

//TextField 3
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4,4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto...",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.black38,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    margin: EdgeInsets.all(1.0),
                    height: 65.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder( 
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder( 
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ); 
  }
}