import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _result = '0';
  String _display = '0';
  String _operation = '';
  late double _firstOperand;

  void _addNumber(String number) {
    setState(() {
      if (_display == '0') {
        _display = number;
      } else {
        _display += number;
      }
    });
  }

  void _performOperation(String operation) {
    setState(() {
      _operation = operation;
      _firstOperand = double.parse(_display);
      _display = '0';
    });
  }

  void _clear() {
    setState(() {
      _result = '0';
      _display = '0';
      _operation = '';
      _firstOperand = 0;
    });
  }

  void _calculate() {
    setState(() {
      double secondOperand = double.parse(_display);
      switch (_operation) {
        case '+':
          _result = (_firstOperand + secondOperand).toString();
          break;
        case '-':
          _result = (_firstOperand - secondOperand).toString();
          break;
        case '*':
          _result = (_firstOperand * secondOperand).toString();
          break;
        case '/':
          _result = (_firstOperand / secondOperand).toString();
          break;
      }
      _display = _result;
      _operation = '';
    });
  }

  // method untuk membangun tampilan button pada kalkulator
  Widget _buildButton(String buttonText, Color buttonColor, Color textColor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {
            if (buttonText == 'C') {
              _clear();
            } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
              _performOperation(buttonText);
            } else if (buttonText == '=') {
              _calculate();
            } else {
              _addNumber(buttonText);
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: buttonColor,
          ),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                _display,
                style: const TextStyle(fontSize: 48),
              ),
            ),
          ),
          Row(
            children: [
              _buildButton('7', Colors.grey[300]!, Colors.black),
              _buildButton('8', Colors.grey[300]!, Colors.black),
              _buildButton('9', Colors.grey[300]!, Colors.black),
              _buildButton('/', Colors.amber[500]!, Colors.white),
            ],
          ),
          Row(
            children: [
              _buildButton('4', Colors.grey[300]!, Colors.black),
              _buildButton('5', Colors.grey[300]!, Colors.black),
              _buildButton('6', Colors.grey[300]!, Colors.black),
              _buildButton('*', Colors.amber[500]!, Colors.white),
            ],
          ),
          Row(
            children: [
              _buildButton('1', Colors.grey[300]!, Colors.black),
              _buildButton('2', Colors.grey[300]!, Colors.black),
              _buildButton('3', Colors.grey[300]!, Colors.black),
              _buildButton('-', Colors.amber[500]!, Colors.white),
            ],
          ),
          Row(
            children: [
              _buildButton('0', Colors.grey[300]!, Colors.black),
              _buildButton('C', Colors.red[500]!, Colors.white),
              _buildButton('=', Colors.green[500]!, Colors.white),
              _buildButton('+', Colors.amber[500]!, Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
