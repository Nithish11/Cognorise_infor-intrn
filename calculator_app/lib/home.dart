import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculaor App"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Row(
            children: [
              outlineButton("9"),
              outlineButton("8"),
              outlineButton("7"),
              outlineButton("+"),
            ],
          ),
          Row(
            children: [
              outlineButton("6"),
              outlineButton("5"),
              outlineButton("4"),
              outlineButton("-"),
            ],
          ),
          Row(
            children: [
              outlineButton("3"),
              outlineButton("2"),
              outlineButton("1"),
              outlineButton("x"),
            ],
          ),
          Row(
            children: [
              outlineButton("C"),
              outlineButton("0"),
              outlineButton("="),
              outlineButton("/"),
            ],
          ),
        ],
      )),
    );
  }

  Expanded outlineButton(String val) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => btnclicked(val),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            val,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }

  late int first, second;
  String res = "", text = " ";
  late String opp;
  void btnclicked(String btntext) {
    if (btntext == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "x" ||
        btntext == "/") {
      first = int.parse(text);
      res = "";
      opp = btntext;
    } else if (btntext == "=") {
      second = int.parse(text);
      if(opp == "+"){
        res = (first + second).toString();
      }
       if(opp == "-"){
        res = (first - second).toString();
      }
       if(opp == "x"){
        res = (first * second).toString();
      }
       if(opp == "/"){
        res = (first / second).toString();
      }
    } else {
      res = int.parse(text + btntext).toString();
    }
    setState(() {
      text = res;
    });
  }
}
