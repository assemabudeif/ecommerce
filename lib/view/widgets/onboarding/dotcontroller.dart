import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),
                width: controller.currentIndex == index ? 20 : 6,
                height: 6,
                decoration: BoxDecoration(
                    color: controller.currentIndex == index
                        ? AppColor.primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColor.primaryColor,
                    )),
              ),
            ),
          ],
        );
      },
    );
  }
}
