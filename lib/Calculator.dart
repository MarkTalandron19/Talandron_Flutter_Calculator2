import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String history = "";
  String output = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Center(
          child: Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {
                        setState(() {
                          history = "";
                          output = "0";
                        });
                      }, child: const Text("AC")),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                            child: Text(history),
                          ),
                          SizedBox(
                            height: 30,
                            child: Text(output),
                          ),
                        ],
                      )
                    ],
                  ),
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}7";
                              });
                            },
                            child: const Text("7")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}8";
                              });
                            },
                            child: const Text("8")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}9";
                              });
                            },
                            child: const Text("9")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "$history/";
                              });
                            },
                            child: const Text("/")),
                      ]),
                      TableRow(children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}4";
                              });
                            },
                            child: const Text("4")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}5";
                              });
                            },
                            child: const Text("5")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}6";
                              });
                            },
                            child: const Text("6")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "$history*";
                              });
                            },
                            child: const Text("*")),
                      ]),
                      TableRow(children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}1";
                              });
                            },
                            child: const Text("1")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}2";
                              });
                            },
                            child: const Text("2")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}3";
                              });
                            },
                            child: const Text("3")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "$history-";
                              });
                            },
                            child: const Text("-")),
                      ]),
                      TableRow(children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "${history}0";
                              });
                            },
                            child: const Text("0")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "$history.";
                              });
                            },
                            child: const Text(".")),
                        TextButton(onPressed: () {
                          setState(() {
                            
                          });
                        }, child: const Text("=")),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                history = "$history+";
                              });
                            },
                            child: const Text("+")),
                      ]),
                    ],
                  )
                ]),
          ),
        ));
  }
}
