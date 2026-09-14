import 'package:app2prueba/features/home/models/activity.dart';
import 'package:flutter/material.dart';

class DetailScreeen extends StatelessWidget{

  final Activity activity;


const DetailScreeen({super.key, required this.activity});
@override
Widget build(BuildContext context){
  


return Scaffold(
  appBar: AppBar(title: Text(this.activity.title),),
  body: Center(
    child: Column(
      children: [
        Text("Detalles de la actividad"),
        ElevatedButton(
          onPressed: () => Navigator.pop(context), 
        child: Text("Volver"))
      ],
    ),
  )

);

}

}