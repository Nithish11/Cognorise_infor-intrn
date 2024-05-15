import 'package:flutter/material.dart';
import 'package:todo_list/constants/colors.dart';
import '../widgets/todo_item.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: appbar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35,bottom: 20),
                    child: Text(
                      "All ToDos",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefix: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("avatar.png"),
            ),
          )
        ],
      ),
    );
  }
}
