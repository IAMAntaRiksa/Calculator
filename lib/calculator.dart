import 'package:flutter/material.dart';

void main() => runApp(const Calculator());

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final double _buttonFontSize = 24.0;

  final Color _primarySwatchColor = Colors.orange;
  // final Color _titleAppBarColor = Colors.white;
  // final Color _buttonColorWhite = Colors.white;
  final Color _buttonHighlightColor = Colors.teal.shade400;
  final Color _buttonColorGrey = Colors.grey.shade100;

  int valueA = 0;
  int valueB = 0;
  var sbValue = StringBuffer();
  String operator = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          key: const Key("atas Bawah"),
          flex: 6,
          child: Container(
            key: const Key("expanded_bagian_atas"),
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Text(
                      sbValue.toString(),
                      style: Theme.of(context).textTheme.headline3,
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          key: const Key("atassa Bawahs"),
          flex: 1,
          child: SizedBox(
            key: const Key("atas Bawahs"),
            width: double.infinity,
            height: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      clearValue();
                    },
                    child: Text(
                      'C',
                      style: TextStyle(
                          color: _primarySwatchColor,
                          fontSize: _buttonFontSize),
                    ),
                    style: ElevatedButton.styleFrom(
                      shadowColor: _primarySwatchColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      deleteValue();
                    },
                    child: Icon(
                      Icons.backspace,
                      color: _buttonColorGrey,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _buttonHighlightColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      appendValue("/");
                    },
                    child: const Text('/'),
                    style: ElevatedButton.styleFrom(
                      primary: _buttonHighlightColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("7");
                  },
                  child: Text(
                    '7',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("8");
                  },
                  child: Text(
                    '8',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("9");
                  },
                  child: Text(
                    '9',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("x");
                  },
                  child: Text(
                    'x',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _buttonHighlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("4");
                  },
                  child: Text(
                    '4',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("5");
                  },
                  child: Text(
                    '5',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("6");
                  },
                  child: Text(
                    '6',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("-");
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _buttonHighlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("1");
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("2");
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("3");
                  },
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: _buttonHighlightColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("+");
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: _primarySwatchColor,
                        fontSize: _buttonFontSize,
                        fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _buttonHighlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("0");
                  },
                  child: Text(
                    '0',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    appendValue("=");
                  },
                  child: Text(
                    '=',
                    style: TextStyle(
                        color: _primarySwatchColor, fontSize: _buttonFontSize),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _buttonHighlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    sbValue.write("0");
    operator = "";
  }

  void appendValue(String str) => setState(() {
        bool isDoCalculate = false;
        String strValue = sbValue.toString();
        String lastCharacter = strValue.substring(strValue.length - 1);
        if (str == "0" &&
            (lastCharacter == "/" ||
                lastCharacter == "x" ||
                lastCharacter == "-" ||
                lastCharacter == "+")) {
          return;
        } else if (str == "0" && sbValue.toString() == "0") {
          return;
        } else if (str == "=") {
          isDoCalculate = true;
        } else if (str == "/" || str == "x" || str == "-" || str == "+") {
          if (operator.isEmpty) {
            operator = str;
          } else {
            isDoCalculate = true;
          }
        }

        if (!isDoCalculate) {
          if (sbValue.toString() == "0" && str != "0") {
            sbValue.clear();
          }
          sbValue.write(str);
        } else {
          List<String> values = sbValue.toString().split(operator);
          if (values.length == 2 &&
              values[0].isNotEmpty &&
              values[1].isNotEmpty) {
            valueA = int.parse(values[0]);
            valueB = int.parse(values[1]);
            sbValue.clear();
            int total = 0;
            switch (operator) {
              case "/":
                total = valueA ~/ valueB;
                break;
              case "x":
                total = valueA * valueB;
                break;
              case "-":
                total = valueA - valueB;
                break;
              case "+":
                total = valueA + valueB;
            }
            sbValue.write(total);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              operator = str;
              sbValue.write(str);
            } else {
              operator = "";
            }
          } else {
            String strValue = sbValue.toString();
            String lastCharacter = strValue.substring(strValue.length - 1);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              operator = "";
              sbValue.clear();
              sbValue
                  .write(strValue.substring(0, strValue.length - 1) + "" + str);
              operator = str;
            } else if (str == "=" &&
                (lastCharacter == "/" ||
                    lastCharacter == "x" ||
                    lastCharacter == "-" ||
                    lastCharacter == "+")) {
              operator = "";
              sbValue.clear();
              sbValue.write(strValue.substring(0, strValue.length - 1));
            }
          }
        }
      });

  void deleteValue() => setState(() {
        String strValue = sbValue.toString();
        if (strValue.isNotEmpty) {
          String lastCharacter = strValue.substring(strValue.length - 1);
          if (lastCharacter == "/" ||
              lastCharacter == "x" ||
              lastCharacter == "-" ||
              lastCharacter == "+") {
            operator = "";
          }
          strValue = strValue.substring(0, strValue.length - 1);
          sbValue.clear();
          sbValue.write(strValue.isEmpty ? "0" : strValue);
        }
      });

  void clearValue() => setState(() {
        operator = "";
        sbValue.clear();
        sbValue.write("0");
      });
}
