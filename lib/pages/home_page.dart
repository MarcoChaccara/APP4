import 'package:app04_componentes/pages/alert_page.dart';
import 'package:app04_componentes/pages/avatar_page.dart';
import 'package:app04_componentes/pages/card_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(8, 8),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle-768x770.jpg"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  letterSpacing: 1,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 200.0,
                child: Divider(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: AlertPage(),
              ),
               ItemComponentWidget(
                title: "Card",
                toPage: CardPage(),
              ),
            ],  
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration (
        color: Colors.white ,
        borderRadius: BorderRadius.circular(
          10.0 ,
        ),
        boxShadow: [
          BoxShadow (
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12,
            offset: Offset(5,5),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        leading: Icon(
          Icons.check_circle_outline
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle de Avatar",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
            Icons.chevron_right,
        ),
      ),
    );
  }
}
