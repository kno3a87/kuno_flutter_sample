import 'package:flutter/material.dart';

class Exsample extends StatefulWidget {
  const Exsample({super.key, required this.title});

  final String title;

  @override
  State<Exsample> createState() => _ExsampleState();
}

class _ExsampleState extends State<Exsample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Opa1(),
            const Opa2(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Opa1 extends StatelessWidget {
  const Opa1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Opacity(
      opacity: 0.5,
      child: SizedBox(
        height: 50,
        width: 50,
        child: ColoredBox(color: Colors.red),
      ),
    );
  }
}

class Opa2 extends StatelessWidget {
  const Opa2({super.key});

  @override
  Widget build(BuildContext context) {
    // withOpacity 使うと const ダメぽい
    return SizedBox(
      height: 50,
      width: 50,
      child: ColoredBox(color: Colors.red.withOpacity(0.5)),
    );
  }
}
