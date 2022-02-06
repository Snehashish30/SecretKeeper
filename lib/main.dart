import 'package:flutter/material.dart';
import 'package:firstapplication/pages/welcomepage.dart';

void main() {
  runApp(MaterialApp(
      home: SplashPage(goToPage: WelcomePage(),duration: 3)
  ));

}

class SplashPage extends StatelessWidget{
  int duration = 0;
  Widget goToPage = WelcomePage();

  SplashPage({required this.goToPage, this.duration = 0});


  @override
  Widget build(BuildContext context){

    Future.delayed(Duration(seconds: this.duration), (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });

    return Scaffold(
      body: Container(
        color: const Color(0xFF80C038),
        child: const Center(
          child: Icon(Icons.favorite, color: Colors.white, size: 100)
        )
      )
    );
  }
}
