import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: Text(
                  output,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
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
                            output = "";
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
                            output = "$output(";
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
                            output = "$output)";
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
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (output.isNotEmpty) {
                              output = output.substring(0, output.length - 1);
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.backspace_outlined,
                          color: Colors.green,
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
                            output = "${output}7";
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
                            output = "${output}8";
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
                            output = "${output}9";
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
                            output = "$output/";
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
                            output = "${output}4";
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
                            output = "${output}5";
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
                            output = "${output}6";
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
                            output = "$output*";
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
                            output = "${output}1";
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
                            output = "${output}2";
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
                            output = "${output}3";
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
                            output = "$output-";
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
                            output = "${output}0";
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
                            output = "$output.";
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
                          if (output.isEmpty) {
                            setState(() {
                              output = "0";
                            });
                          } else {
                            try {
                              setState(() {
                                ContextModel cm = ContextModel();
                                Parser p = Parser();
                                Expression exp = p.parse(output);
                                output = exp
                                    .evaluate(EvaluationType.REAL, cm)
                                    .toString();
                              });
                            } on FormatException {
                              displayError(context);
                            } on RangeError {
                              displayError(context);
                            }
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
                            output = "$output+";
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

  Future<void> displayError(BuildContext context) async {
    return showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text(
              "Error",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            content: const Text("That is not a math expression.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              )
            ],
          );
        }));
  }
}
