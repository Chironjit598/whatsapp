import 'package:flutter/material.dart';

Widget chatItemListTile(){
  return ListTile(
    
    leading: CircleAvatar(
     radius: 30,
      backgroundColor: Colors.blue,
    ),
    title: Text("Chironjit", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    subtitle: Row(
      children: [
        Icon(Icons.done_all),
        SizedBox(
          width: 10,
        ),
        Text("How are you",
        style: TextStyle(
          fontSize: 14,
        ),
        )
      ],
    ),
    trailing: Text("8:30", style: TextStyle(fontSize: 15),),
  );
}