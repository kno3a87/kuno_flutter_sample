import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          fit: StackFit.expand,
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
            CustomPaint(
              painter: _SamplePainter(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color;
    paint.color = Colors.red.withAlpha(40);
    canvas.drawCircle(const Offset(0, 0), 25, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
