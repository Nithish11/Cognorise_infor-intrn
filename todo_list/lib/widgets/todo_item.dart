import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:todo_list/constants/colors.dart';

class ToDoItem extends StatefulWidget {
  const ToDoItem({super.key});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("this is listtile");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          "Check Mail",
          style: TextStyle(
              fontSize: 15,
              color: tdBlack,
              fontWeight: FontWeight.w300,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 9,),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {},
            icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
