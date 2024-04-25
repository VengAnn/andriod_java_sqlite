import 'package:flutter/material.dart';
import 'package:responsive_ui_dynamic_web_mobile/features/responsive_ui_info/presentation/views/device/device.dart';
import 'package:responsive_ui_dynamic_web_mobile/features/responsive_ui_info/presentation/views/pages/large_page.dart';
import 'package:responsive_ui_dynamic_web_mobile/features/responsive_ui_info/presentation/views/pages/medium_page.dart';
import 'package:responsive_ui_dynamic_web_mobile/features/responsive_ui_info/presentation/views/pages/small_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Device(
        smallSize: SmallPage(),
        mediumSize: MediumPage(),
        largeSize: LargePage(),
      ),
    );
  }
}
