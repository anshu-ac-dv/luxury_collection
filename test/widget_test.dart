import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:luxury_collection/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our luxury title is present.
    expect(find.text('LUXURY COLLECTION'), findsOneWidget);
    expect(find.text('Welcome to your Lifestyle'), findsOneWidget);
    expect(find.text('Cars • Wardrobe • Watches'), findsOneWidget);
  });
}
