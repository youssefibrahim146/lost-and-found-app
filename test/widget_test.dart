import 'package:flutter_test/flutter_test.dart';
import 'package:lost_found_app/main.dart';

void main() {
  testWidgets(
    'Lost And Found',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MyApp(),
      );
    },
  );
}
