import 'package:flutter/material.dart';
import 'ipcam_controller.dart';

class IPCamCompactView extends StatelessWidget {
  final IPCamController controller;

  const IPCamCompactView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.toggleView,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/ipcam.jpeg', width: 100, height: 100),
          Text(controller.lastUpdate.toLocal().toString().substring(11, 16)),
          const Text("MOCK CAMERA - ONLINE"),
        ],
      ),
    );
  }
}
