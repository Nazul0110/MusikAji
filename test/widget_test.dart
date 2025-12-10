import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_aji/main.dart'; // ini sudah benar sesuai screenshot-mu

void main() {
  testWidgets('BeatPlayer smoke test', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const BeatPlayerApp());

    // Di sini sebenarnya tidak wajib ada expect, cukup build saja
  });
}
