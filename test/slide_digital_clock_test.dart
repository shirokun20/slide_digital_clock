import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slide_digital_clock/src/digital_clock.dart';

void main() {
  testWidgets('DigitalClock widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: Center(child: DigitalClock())),
      ),
    );

    // Wait for the widget to settle
    await tester.pumpAndSettle();

    // Verify that the DigitalClock is present
    expect(find.byType(DigitalClock), findsOneWidget);
  });
}
