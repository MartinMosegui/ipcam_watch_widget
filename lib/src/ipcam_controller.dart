import 'dart:async';

class IPCamController {
  bool isExpanded = false;
  DateTime lastUpdate = DateTime.now();

  final StreamController<DateTime> _refreshController =
      StreamController.broadcast();

  Stream<DateTime> get onRefresh => _refreshController.stream;

  void toggleView() {
    isExpanded = !isExpanded;
  }

  void refresh() {
    lastUpdate = DateTime.now();
    _refreshController.add(lastUpdate);
  }

  void dispose() {
    _refreshController.close();
  }
}
