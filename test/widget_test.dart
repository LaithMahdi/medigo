// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:medigo/core/services/storage_service.dart';
import 'package:medigo/main.dart';

void main() {
  testWidgets('Medigo app smoke test', (WidgetTester tester) async {
    // Initialize services for testing
    await Get.putAsync(() => StorageService().init());

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app builds successfully
    expect(find.byType(MyApp), findsOneWidget);
  });
}
