import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/common_attribute/common_color.dart';
import 'package:quiz_app/common_attribute/common_image.dart';
import 'package:quiz_app/common_attribute/common_value.dart';
import 'package:quiz_app/common_widget/common_container.dart';
import 'package:quiz_app/common_widget/common_text.dart';
import 'package:quiz_app/ui/home/home_provider.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  static const String routeName = "/home_ui";
  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(context),
        child: const HomeUi(),
    );
  }

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CommonColor.grey,
        title: const CommonText(
          text: "Easy Mode",
          fontWeight: FontWeight.bold,
          fontSize: Spacing.xLarge,
          fontColor: CommonColor.black,
        ),
        actions: [
          SvgPicture.asset(CommonSvg.cup),
          const Gap(Spacing.small),
          const CommonText(
              text: "0 points",
              fontWeight: FontWeight.w500,
              fontSize: Spacing.medium+2,
          ),
          const Gap(Spacing.small),
        ],
      ),
      body: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        value.startTimer();
                        value.enableQuestionIndex=1;
                      },
                      child: CommonContainer(
                        borderRadius: BorderRadius.circular(Spacing.medium),
                        border: Border.all(color: CommonColor.grey),
                        padding: PaddingValue.xSmall,
                        margin: PaddingValue.small,
                        color: CommonColor.green,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(CommonSvg.play),
                            const Gap(Spacing.small),
                            CommonText(text: "Start"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: Spacing.large),
                      child: CommonText(
                        text: "Time : 0${value.time}",
                        fontWeight: FontWeight.w500,
                        fontSize: Spacing.medium+2,
                      ),
                    ),
                  ],
                ),

                Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: PaddingValue.xMedium,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              CommonText(
                                text: "${++index})\t\t\t2+3",
                                fontWeight: FontWeight.w500,
                                fontSize: Spacing.large,
                              ),

                              const Gap(Spacing.medium),
                              CommonContainer(
                                padding: const EdgeInsetsDirectional.symmetric(
                                    horizontal: Spacing.xxxLarge,
                                    vertical: Spacing.small
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        /// A
                                        GestureDetector(
                                          onTap: (value.enableQuestionIndex == index)
                                            ? (){
                                            print("enable => $index");
                                          }
                                            : null,
                                          child: CircleAvatar(
                                            radius: Spacing.medium,
                                            backgroundColor: (value.enableQuestionIndex == index) ? CommonColor.grey : CommonColor.grey.withOpacity(0.4),
                                            child: const CommonText(
                                              text: "A",
                                              fontColor: CommonColor.white,
                                            ),
                                          ),
                                        ),
                                        const Gap(Spacing.medium),
                                        const CommonText(text: "1"),
                                        const Gap(Spacing.xLarge*3),


                                        /// B
                                        GestureDetector(
                                          onTap:(value.enableQuestionIndex == index)
                                              ? (){
                                            print("enable => $index");
                                          }
                                             : null,
                                          child: CircleAvatar(
                                            radius: Spacing.medium,
                                            backgroundColor: (value.enableQuestionIndex == index) ? CommonColor.grey : CommonColor.grey.withOpacity(0.4),
                                            child: CommonText(
                                              text: "B",
                                              fontColor: CommonColor.white,
                                            ),
                                          ),
                                        ),
                                        const Gap(Spacing.medium),
                                        const CommonText(text: "5"),
                                      ],
                                    ),
                                    const Gap(Spacing.medium),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        /// C
                                        GestureDetector(
                                          onTap: (value.enableQuestionIndex == index)
                                                 ? (){
                                                     print("enable => $index");
                                                  }
                                                : null,
                                          child: CircleAvatar(
                                            radius: Spacing.medium,
                                            backgroundColor: (value.enableQuestionIndex == index) ? CommonColor.grey : CommonColor.grey.withOpacity(0.4),
                                            child: CommonText(
                                              text: "C",
                                              fontColor: CommonColor.white,
                                            ),
                                          ),
                                        ),
                                        const Gap(Spacing.medium),
                                        const CommonText(text: "7"),
                                        const Gap(Spacing.xLarge*3),

                                        /// D
                                        GestureDetector(
                                          onTap: (value.enableQuestionIndex == index)
                                                 ? (){
                                                     print("enable => $index");
                                                 }
                                                 : null,
                                          child: CircleAvatar(
                                            radius: Spacing.medium,
                                            backgroundColor: (value.enableQuestionIndex == index) ? CommonColor.grey : CommonColor.grey.withOpacity(0.4),
                                            child: CommonText(
                                              text: "D",
                                              fontColor: CommonColor.white,
                                            ),
                                          ),
                                        ),
                                        const Gap(Spacing.medium),
                                        const CommonText(text: "0"),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
