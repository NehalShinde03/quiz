import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/common_attribute/common_color.dart';
import 'package:quiz_app/common_attribute/common_image.dart';
import 'package:quiz_app/common_attribute/common_value.dart';
import 'package:quiz_app/common_widget/common_container.dart';
import 'package:quiz_app/common_widget/common_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/ui/home/home_ui.dart';

class ModeUi extends StatefulWidget {
  const ModeUi({super.key});

  static const String routeName = "/mode_ui";
  static Widget builder(BuildContext context){
    return const ModeUi();
  }

  @override
  State<ModeUi> createState() => _ModeUiState();
}

class _ModeUiState extends State<ModeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            CommonText(
              text: "Select Modes",
              fontWeight: FontWeight.bold,
              fontSize: Spacing.xxLarge,
              fontColor: CommonColor.black.withOpacity(0.6),
            ),

            GestureDetector(
              onTap: () => Navigator.pushNamed(context, HomeUi.routeName),
              child: CommonContainer(
                width: double.infinity,
                color: Colors.grey,
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: Spacing.xLarge,
                  horizontal: Spacing.xxLarge,
                ),
                margin: const EdgeInsetsDirectional.only(
                    start: Spacing.xxxLarge,
                    end: Spacing.xxxLarge,
                    top: Spacing.xxxLarge
                ),
                borderRadius: ShapeBorderRadius.large,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Easy Mode",
                      fontWeight: FontWeight.bold,
                      fontSize: Spacing.xLarge,
                      fontColor: CommonColor.black,
                    ),
                    SvgPicture.asset(
                        CommonSvg.arrowRight,
                        fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              child: CommonContainer(
                width: double.infinity,
                color: Colors.grey,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: Spacing.xLarge,
                    horizontal: Spacing.xxLarge
                ),
                margin: const EdgeInsetsDirectional.symmetric(
                  vertical: Spacing.xLarge,
                    horizontal: Spacing.xxxLarge
                ),
                borderRadius: ShapeBorderRadius.large,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Medium Mode",
                      fontWeight: FontWeight.bold,
                      fontSize: Spacing.xLarge,
                      fontColor: CommonColor.black,
                    ),
                    SvgPicture.asset(
                      CommonSvg.arrowRight,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              child: CommonContainer(
                width: double.infinity,
                color: Colors.grey,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: Spacing.xLarge,
                    horizontal: Spacing.xxLarge
                ),
                margin: const EdgeInsetsDirectional.symmetric(
                  // vertical: Spacing.xLarge,
                    horizontal: Spacing.xxxLarge
                ),
                borderRadius: ShapeBorderRadius.large,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Hard Mode",
                      fontWeight: FontWeight.bold,
                      fontSize: Spacing.xLarge,
                      fontColor: CommonColor.black,
                    ),
                    SvgPicture.asset(
                      CommonSvg.arrowRight,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
