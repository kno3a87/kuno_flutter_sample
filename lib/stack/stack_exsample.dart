import 'package:flutter/material.dart';

class StackExsample extends StatelessWidget {
  const StackExsample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ColoredBox(color: Colors.cyan.withAlpha(40)),
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ColoredBox(color: Colors.amber.withAlpha(40)),
          ),
        ],
      ),
    );
  }
}
