import 'package:flutter/material.dart';
import 'package:flutter_adv_course/core/theme/styles.dart';
import 'package:flutter_adv_course/features/on_boarding/widgets/doc_image_and_text.dart';
import 'package:flutter_adv_course/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_adv_course/features/on_boarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DocImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GreyRegular,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    const GetStartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
