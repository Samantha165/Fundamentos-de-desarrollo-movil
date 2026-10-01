
import 'package:flutter/material.dart';

import 'package:repaso/features/home/models/pendientes.dart';
import 'package:repaso/features/home/widgets/pendientes_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final _formKey = GlobalKey<FormState>();

String nombre ="";
String categoria="";

  List<Pendiente> pendientesList=[
    Pendiente(title: "Dark matter",categoria: "Libro", isCompleted: false),
     Pendiente(title: "El cadaver de la novia",categoria: "Pelicula",isCompleted: false)
  ];

List<String> itemsList=<String>[
 "Videojuego", "Libro", "Pelicula"

];
String catSelec = "";




 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.pinkAccent,
        
        title: Text(widget.title),

        
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: pendientesList.length,
            itemBuilder: (context, index){
              final currentActivity = pendientesList[index];

              return Dismissible(
                key: ValueKey(currentActivity),


               onDismissed: (direction){

                setState(() {
                  pendientesList.removeAt(index);
                });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${currentActivity.title} dismissed')));
               },

            

               background: Container(
                color: Colors.red,
                child: 
                Icon(Icons.delete,color: Colors.white, size: 30,),
                ),
                 child: InteractivePendientesCard(pendiente: currentActivity)
                 );
               
            }
          ),
    ),
   floatingActionButton: FloatingActionButton(
       child: const Icon(Icons.add),
      onPressed: (){

          showDialog(
            context: context, 
            builder: (BuildContext context){
              return AlertDialog(
                title: Text("Nuevo pendiente"),
                content: 
                Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Nombre',),
                        
                onChanged: (valor) => nombre = valor,
                validator: (valor) => valor!.isEmpty ? 'Campo requerido' : null
                      ),
              DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Categoría",
                    ),

                    items: itemsList.map((categoria) {
                      return DropdownMenuItem(
                        value: categoria,
                        child: Text(categoria),
                      );
                    }).toList(),

                    onChanged: (value) {
                      setState(() {
                        catSelec = value!;
                      });
                    },

                    validator: (value) {
                      if (value == "") {
                        return "Selecciona una categoría";
                      }
                      return null;
                    },
                  ),
                    ],
                  )


                  ),
                actions: [

                  ElevatedButton(
                    onPressed: (){

                      if(_formKey.currentState!.validate()){

                        setState(() {
                          pendientesList.add(Pendiente(title: nombre, categoria: catSelec, isCompleted: false));
                        });
                      }
                      Navigator.pop(context);
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$catSelec guardado')));
                    }, 
                    child: Text("Guardar")
                    
                    )
                ],          

              );
            }
            
            );
       
        
      }
      
      ),

    );
  }
}





