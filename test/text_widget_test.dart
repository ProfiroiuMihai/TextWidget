import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_widget/text_widget.dart';

void main() {
  const MethodChannel channel = MethodChannel('text_widget');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TextWidget.platformVersion, '42');
  });
}
