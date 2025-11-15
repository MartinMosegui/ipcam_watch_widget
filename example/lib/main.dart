import 'package:flutter/material.dart';
import 'package:ipcam_watch_widget/ipcam_watch_widget.dart';

void main() {
  runApp(const IPCamExampleApp());
}

class IPCamExampleApp extends StatefulWidget {
  const IPCamExampleApp({super.key});

  @override
  State<IPCamExampleApp> createState() => _IPCamExampleAppState();
}

class _IPCamExampleAppState extends State<IPCamExampleApp> {
  final controller = IPCamController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder(
          stream: controller.onRefresh,
          builder: (context, snapshot) {
            return Center(
              child: controller.isExpanded
                  ? IPCamExpandedView(controller: controller)
                  : IPCamCompactView(controller: controller),
            );
          },
        ),
      ),
    );
  }
}
