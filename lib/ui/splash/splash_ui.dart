import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/common_attribute/common_color.dart';
import 'package:quiz_app/common_attribute/common_value.dart';
import 'package:quiz_app/common_widget/common_text.dart';
import 'package:quiz_app/ui/rules_regulation/rules_regulation_ui.dart';
import 'package:quiz_app/ui/splash/splash_provider.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  static const String routeName = "/splash_ui";
  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => SplashUiProvider(context),
      child: const SplashUi(),
    );
  }

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, RulesNRegulationUi.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/gif/quiz.gif"),
              const Gap(Spacing.xxLarge),
              CommonText(
                  text: "Math Quiz",
                  fontWeight: FontWeight.bold,
                  fontSize: Spacing.xLarge,
                  fontColor: CommonColor.grey.withOpacity(0.5),
              )
            ],
          ),
        ),
    );
  }
}
