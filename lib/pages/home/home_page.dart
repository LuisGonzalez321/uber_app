import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.blue]
            )
          ),
          child: Column(
            children: [
              ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/img/unnamed.png',
                        width: 150,
                        height: 100,
                      ),
                      Text('Facil y rapido')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Text('Selecciona tu rol', style: TextStyle(color: Colors.white)),
              SizedBox(height: 30,),
              CircleAvatar(
                backgroundImage:
                  AssetImage('assets/img/avatar.png'),
                  radius: 50,
                  backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Cliente', style: TextStyle(color: Colors.white)),

              SizedBox(height: 30,),
              CircleAvatar(
                backgroundImage:
                AssetImage('assets/img/avatar.png'),
                radius: 50,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Conductor', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}