
import 'package:flutter/material.dart';
import 'package:repaso/features/home/models/pendientes.dart';

class DetailScreeen extends StatelessWidget{

  final Pendiente pendiente;


const DetailScreeen({super.key, required this.pendiente});
@override
Widget build(BuildContext context){
  

return Scaffold(
  appBar: AppBar(title: Text(this.pendiente.title),),
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