import 'package:flutter/material.dart';
import 'package:flutter_adv_course/core/helpers/extensions.dart';
import 'package:flutter_adv_course/core/routing/routes.dart';
import 'package:flutter_adv_course/core/theme/colors.dart';
import 'package:flutter_adv_course/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          ColorsManager.mainBlue,
        ),
        minimumSize: MaterialStateProperty.all(
          Size(
            double.infinity,
            52.h,
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.r,
              ),
            ),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16whiteSemibold,
      ),
    );
  }
}
