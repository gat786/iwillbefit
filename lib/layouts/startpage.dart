import 'package:flutter/material.dart';


import 'dart:math';

class StartPage extends StatelessWidget{

  StartPage(this.imageAddress,this.messageShown);

  final imageAddress;
  final messageShown;


  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imageAddress)
              )
            ),
          ),

          Container(color: Colors.black54,),

          Center(child: Text(messageShown,style: TextStyle(color: Colors.white,fontSize: 30.0),))
        ],
      )
    );
  }

}