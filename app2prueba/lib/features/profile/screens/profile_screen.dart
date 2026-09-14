
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{




const ProfileScreen({super.key});
@override
Widget build(BuildContext context){
  


return Scaffold(
  appBar: AppBar(title: Text("Mi perfil"),),
  body: Center(
    child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

          
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pink,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),

        SizedBox(height: 16),
            Text(
              "Samantha ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),


                SizedBox(height: 16),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("15"),
                        Text("Entrenamientos Completos")
                      ],
                    ),
                  ),
                ),


                Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("3 "),
                        Text("Carreras completadas")
                      ],
                    ),
                  ),
                )

            ],
          ),

          SizedBox(height: 20), // <-- espacio antes del botón

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child:Text("Volver"),
            ),
                
          ],

          


    ),
  )

);

}

}