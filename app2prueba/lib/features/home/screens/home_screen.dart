import 'package:app2prueba/features/home/models/activity.dart';
import 'package:app2prueba/features/home/widgets/interactive_activity_card.dart';
import 'package:flutter/material.dart';
import 'package:app2prueba/features/profile/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<Activity> activityList=[
    Activity(title: "Pasos diarios", subtitle: "", trailingText: "", icon: Icons.abc, iconColor: Colors.black),
  Activity(title: "Pasos diarios", subtitle: "", trailingText: "", icon: Icons.abc, iconColor: Colors.black),
  Activity(title: "Pasos diarios", subtitle: "", trailingText: "", icon: Icons.abc, iconColor: Colors.black),
  Activity(title: "Pasos diarios", subtitle: "", trailingText: "", icon: Icons.abc, iconColor: Colors.black),
  ];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.blueAccent,
        
        title: Text(widget.title),
 actions: [
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => ProfileScreen()
           ));
      },
      child: const Text("Perfil"),
    ),
  ],
        
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: activityList.length,
            itemBuilder: (context, index){
              final currentActivity = activityList[index];
              return InteractiveActivityCard(activity: currentActivity);
            }
          ),
    ),
    );
  }
}


