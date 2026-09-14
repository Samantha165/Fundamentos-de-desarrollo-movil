import 'package:app2prueba/features/details/screens/detail_screen.dart';
import 'package:app2prueba/features/home/models/activity.dart';
import 'package:flutter/material.dart';

class InteractiveActivityCard  extends StatefulWidget{
final Activity activity;

const InteractiveActivityCard({super.key, required this.activity});

@override
State<InteractiveActivityCard> createState() => _InteractiveActivityCardState();
}


class _InteractiveActivityCardState extends State<InteractiveActivityCard>{
bool isCompleted= false;
  @override
  Widget build(BuildContext context){

    return Card(
    color: isCompleted ? Colors.lightGreen : Colors.white ,
    elevation: 4,
    child: ListTile(
      title: Text(widget.activity.title),
      subtitle: Text(isCompleted ? "Completado" : "Pendiente"),
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => DetailScreeen(activity: widget.activity)
           ));
      },
      trailing: IconButton(
        onPressed: (){
          setState(() {
            isCompleted = !isCompleted;
          });
          }, 
        icon: Icon(
        isCompleted ? Icons.check : Icons.radio_button_unchecked, 
        color: isCompleted ? Colors.green : Colors.grey,)),
    ),
    );
  }

}


