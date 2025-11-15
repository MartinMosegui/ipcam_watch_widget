import 'package:flutter/material.dart';
import 'ipcam_controller.dart';

class IPCamExpandedView extends StatelessWidget {
  final IPCamController controller;

  const IPCamExpandedView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/ipcam.jpeg', width: 200, height: 200),
        Text("Last update: ${controller.lastUpdate}"),
        const Text("Status: ONLINE"),
        ElevatedButton(
          onPressed: controller.refresh,
          child: const Text("Refresh"),
        )
      ],
    );
  }
}
