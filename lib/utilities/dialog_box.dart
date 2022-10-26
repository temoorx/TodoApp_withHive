import 'package:flutter/material.dart';
import 'package:todoapp/utilities/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[500],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            cursorColor: Colors.grey[600],
            controller: controller,
            decoration: InputDecoration(
                focusColor: Colors.grey[600],
                hoverColor: Colors.grey[600],
                fillColor: Colors.grey[600],
                border: OutlineInputBorder(),
                hintText: "Add a new task"),
          ),
          SizedBox(
            height: 8,
          ),
          //buttons--> save and cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //save button

              MyButton(text: "Save", onPressed: onSave),
              SizedBox(
                width: 8,
              ),
              //cancel button

              MyButton(text: "Cancel", onPressed: onCancel)
            ],
          )
        ]),
      ),
    );
  }
}
