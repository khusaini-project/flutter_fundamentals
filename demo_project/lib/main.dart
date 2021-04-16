import 'package:flutter/material.dart';

void  main () =>  runApp ( MyApp ());

class  MyApp  extends  StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return  MaterialApp (
      home :  MainPage (),
    );
  }
}

class  MainPage  extends  StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      appBar :  AppBar(
        title :  Text( "Latihan Media Query" ),
        ),
      body : (MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
              children: generateContainers(),
            ) 
          : Row(
            children: generateContainers(),
          ),
    );
  }

  List < Widget >  generateContainers () {
    return  < Widget > [
      Container(
        color: Colors.red,
      )
      
    ];
  }
}