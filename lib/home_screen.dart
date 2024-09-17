import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _numOneTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Number 1",
                labelText: "Number 1",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _numTwoTEController,
              decoration: InputDecoration(
                hintText: "Number 2",
               labelText: "Number 2",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 16,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                    // onPressed: () {
                    //   _add();
                    // },
                  onPressed: _add,
                    icon: Icon(Icons.add),
                    label: Text("Add")),
                ElevatedButton.icon(
                    // onPressed: () {
                    //   _sub();
                    // },
                  onPressed:_sub,
                    icon: Icon(Icons.remove),
                    label: Text("Sub")),
                ElevatedButton.icon(
                    // onPressed: () {
                    //   _sub();
                    // },
                  onPressed: _mul,
                    icon: Icon(Icons.star),
                    label: Text("Mul")),
                ElevatedButton.icon(
                    // onPressed: () {
                    //   _sub();
                    // },
                  onPressed: _divide,
                    icon: Icon(Icons.ac_unit_outlined),
                    label: Text("Division")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Result: $_result"),
          ],
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }
  void _mul() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne * numberTwo;
    setState(() {});
  }
  void _divide() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne / numberTwo;
    setState(() {});
  }

  @override
  void dispose() {
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
    super.dispose();
  }
}
