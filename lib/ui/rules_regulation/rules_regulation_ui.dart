import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/common_attribute/common_color.dart';
import 'package:quiz_app/common_attribute/common_value.dart';
import 'package:quiz_app/common_widget/common_elevated_button.dart';
import 'package:quiz_app/common_widget/common_text.dart';
import 'package:quiz_app/ui/home/home_ui.dart';

class RulesNRegulationUi extends StatefulWidget {
  const RulesNRegulationUi({super.key});

  static const String routeName = "/rules_regulation";
  static Widget builder(BuildContext context){
    return const RulesNRegulationUi();
  }

  @override
  State<RulesNRegulationUi> createState() => _RulesNRegulationUiState();
}

class _RulesNRegulationUiState extends State<RulesNRegulationUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: Spacing.small,
            vertical: 60
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              const Padding(
                padding: EdgeInsetsDirectional.only(bottom: Spacing.xxxLarge),
                child: CommonText(
                  text: "Rules and Regulations",
                  fontWeight: FontWeight.bold,
                  fontSize: Spacing.xLarge,
                  fontColor: CommonColor.black,
                ),
              ),

              const Row(
                children: [
                  CommonText(
                    text: "● Eligibility : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Open to all users with access to the app.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Quiz Format: ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Answer questions presented on the app.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Scoring : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Earn points for correct answers.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Timing : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Play within the specified timeframe.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Mode : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Quiz are Divided in 3 Mode (Easy , Medium, Hard).",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Easy Mode : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Time - 3 Sec , Point - 3.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Medium Mode : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Time - 7 Sec , Point - 5.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xSmall),

              const Row(
                children: [
                  CommonText(
                    text: "● Hard Mode : ",
                    fontSize: Spacing.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Time - 10 Sec , Point - 7.",
                    fontSize: Spacing.medium,
                  ),
                ],
              ),
              const Gap(Spacing.xxxLarge),

              CommonElevatedButton(
               backgroundColor: Colors.orange,
                onPressed: () => Navigator.pushNamed(context, HomeUi.routeName),
                child: const CommonText(
                    text: "Next",
                    fontColor: CommonColor.white,
                    fontWeight: TextWeight.medium,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
