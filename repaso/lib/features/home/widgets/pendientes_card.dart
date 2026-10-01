
import 'package:flutter/material.dart';
import 'package:repaso/features/details/screens/detail_screen.dart';
import 'package:repaso/features/home/models/pendientes.dart';


class InteractivePendientesCard extends StatefulWidget{
final Pendiente pendiente;

const InteractivePendientesCard({super.key, required this.pendiente});

@override
State<InteractivePendientesCard> createState() => _InteractivePendientesCardState();
}


class _InteractivePendientesCardState extends State<InteractivePendientesCard>{
bool isCompleted = false;




  @override
  Widget build(BuildContext context){

    return Card(
    color: widget.pendiente.isCompleted ? Colors.lightGreen : Colors.white ,
    elevation: 4,
    child: ListTile(
      title: Text(widget.pendiente.title),
      subtitle: Text(widget.pendiente.categoria),
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => DetailScreeen(pendiente: widget.pendiente)
           ));
      },
     trailing: IconButton(
        onPressed: (){
          setState(() {
            widget.pendiente.isCompleted = !widget.pendiente.isCompleted;
          });

           
          }, 
        icon: Icon(
        widget.pendiente.isCompleted ? Icons.check : Icons.radio_button_unchecked, 
        color: widget.pendiente.isCompleted ? Colors.green : Colors.grey,)),
    ),
    );
  }

}


