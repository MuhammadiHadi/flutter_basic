import 'package:flutter/material.dart';
import 'package:flutter_basic/view/home_view.dart';
import 'package:flutter_locales/flutter_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'fa']);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(
      builder: (locale) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
        home: HomeView(),
      ),
    );
  }
}
