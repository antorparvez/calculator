import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

String input = "";
String value1 = "";
String value2 = "";
String  value = "";
String result = "";

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(fontFamily: "Raleway"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Calculator"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontFamily: "Roboto",
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        input,
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text(
                        "= $result",
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("1");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto-bold",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("2");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("3");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value1 = value;
                          input = input+"+";
                          value ="";
                        });
                      },
                      child: Container(
                        child: const Text(
                          '+',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("4");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("5");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("6");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value1 = value;
                          input = input+"-";
                          value ="";
                        });
                      },
                      child: Container(
                        child: const Text(
                          '-',
                          style: TextStyle(
                            fontSize: 60,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("7");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("8");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("9");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '9',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value1 = value;
                          input = input+"x";
                          value ="";
                        });
                      },
                      child: Container(
                        child: const Text(
                          'x',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTapClick("0");
                        });
                      },
                      child: Container(
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input = "";
                          result = "";
                          value1="";
                          value="";
                        });
                      },
                      child: Container(
                        child: const Text(
                          'c',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (kDebugMode) {
                          print("this is value1 $value1");
                          print("this is value2 $value");

                          var c = int.parse(value1);
                          var d = int.parse(value);
                          var e = 0;
                          print(e.toString());

                          if(input.contains("+")){
                            e = c + d;
                          }else if(input.contains("-")){
                            e = c - d;
                          }else if(input.contains("x")){
                            e = c * d;
                          }else if(input.contains("÷")){
                           var f =  (c/d);
                           result = f.toString();
                          }

                          result = e.toString();


                          }
                        });
                      },
                      child: Container(
                        child: const Text(
                          '=',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value1 = value;
                          input = input+"÷";
                          value ="";
                        });
                      },
                      child: Container(
                        child: const Text(
                          '÷',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void onTapClick(String num) {
  value = value+num;
  input = input+num;
}

