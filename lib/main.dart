import 'package:flutter/material.dart';
import 'package:quiz_app/ui/home/home_ui.dart';
import 'package:quiz_app/ui/mode/mode_ui.dart';
import 'package:quiz_app/ui/rules_regulation/rules_regulation_ui.dart';
import 'package:quiz_app/ui/splash/splash_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashUi.routeName,
      routes: routes,
    );
  }

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        SplashUi.routeName:SplashUi.builder,
        RulesNRegulationUi.routeName:RulesNRegulationUi.builder,
        HomeUi.routeName:HomeUi.builder,
        ModeUi.routeName:ModeUi.builder
  };

}
