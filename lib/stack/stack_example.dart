import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({
    Key? key,
    required this.camera,
  }) : super(key: key);

  final CameraDescription camera;

  @override
  StackExampleState createState() => StackExampleState();
}

class StackExampleState extends State<StackExample> {
  late CameraController _cameraController;

  @override
  void initState() {
    _cameraController = CameraController(
      // カメラを指定
      widget.camera,
      // 解像度を定義
      ResolutionPreset.high,
    );

    super.initState();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: FutureBuilder(
        future: _cameraController.initialize(),
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Stack(
                children: [
                  CameraPreview(_cameraController),
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
            ),
          );
        },
      ),
    );
  }
}
