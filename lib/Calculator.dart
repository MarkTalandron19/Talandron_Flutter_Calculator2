import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 390,
                    height: 50,
                    child: Text(
                      history,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 390,
                    height: 50,
                    child: Text(
                      output,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Expanded(
            child: SizedBox(
              height: 0,
            ),
          ),
          Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "";
                            output = "0";
                          });
                        },
                        child: const Text(
                          "AC",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history(";
                          });
                        },
                        child: const Text(
                          "(",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history)";
                          });
                        },
                        child: const Text(
                          ")",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (history.isNotEmpty) {
                              history =
                                  history.substring(0, history.length - 1);
                            }
                          });
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}7";
                          });
                        },
                        child: const Text(
                          "7",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}8";
                          });
                        },
                        child: const Text(
                          "8",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}9";
                          });
                        },
                        child: const Text(
                          "9",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history/";
                          });
                        },
                        child: const Text(
                          "/",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}4";
                          });
                        },
                        child: const Text(
                          "4",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}5";
                          });
                        },
                        child: const Text(
                          "5",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}6";
                          });
                        },
                        child: const Text(
                          "6",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history*";
                          });
                        },
                        child: const Text(
                          "*",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}1";
                          });
                        },
                        child: const Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}2";
                          });
                        },
                        child: const Text(
                          "2",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}3";
                          });
                        },
                        child: const Text(
                          "3",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history-";
                          });
                        },
                        child: const Text(
                          "-",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "${history}0";
                          });
                        },
                        child: const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history.";
                          });
                        },
                        child: const Text(
                          ".",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          if (history.isEmpty) {
                            setState(() {
                              output = "0";
                            });
                          } else {
                            setState(() {
                              ContextModel cm = ContextModel();
                              Parser p = Parser();
                              Expression exp = p.parse(history);
                              output = exp
                                  .evaluate(EvaluationType.REAL, cm)
                                  .toString();
                            });
                          }
                        },
                        child: const Text(
                          "=",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: kToolbarHeight,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            history = "$history+";
                          });
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ]),
            ],
          )
        ]),
      ),
    );
  }
}
