import 'package:flutter_test/flutter_test.dart';
import 'package:ipcam_watch_widget/ipcam_watch_widget.dart';

void main() {
  test('Controller toggles expanded view', () {
    final controller = IPCamController();
    expect(controller.isExpanded, false);
    controller.toggleView();
    expect(controller.isExpanded, true);
  });

  test('Refresh updates timestamp', () {
    final controller = IPCamController();
    final old = controller.lastUpdate;
    controller.refresh();
    expect(controller.lastUpdate.isAfter(old), true);
  });
}
