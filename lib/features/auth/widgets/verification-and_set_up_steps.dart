import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class VerificationAndSetUpSteps extends StatefulWidget {
  VerificationAndSetUpSteps({
    super.key,
    required this.isFirstPage,
    required this.activeStep,
  });

  final bool isFirstPage;
  int activeStep = 0;

  @override
  State<VerificationAndSetUpSteps> createState() =>
      _VerificationAndSetUpStepsState();
}

class _VerificationAndSetUpStepsState extends State<VerificationAndSetUpSteps> {

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: widget.activeStep,
      fitWidth: false,
      lineStyle: LineStyle(
        lineLength: 30,
        lineType: LineType.normal,
        lineThickness: 2,
        lineWidth: 20,
        unreachedLineType: LineType.normal,
        defaultLineColor: AppColors.mainColor,
        unreachedLineColor: AppColors.mainColor.withOpacity(.4),
      ),
      activeStepTextColor: AppColors.blackColor,
      finishedStepTextColor: AppColors.gray6Color,
      internalPadding: 4,
      // enableStepTapping: false,
      showLoadingAnimation: false,
      stepRadius: 22,
      finishedStepBackgroundColor: AppColors.mainColor,
      activeStepBackgroundColor: AppColors.mainColor,
      showStepBorder: false,
      steps: [
        EasyStep(
          customStep: CircleAvatar(
            radius: widget.activeStep == 0 ? 22 : 16,
            backgroundColor: widget.activeStep >= 0
                ? AppColors.mainColor
                : AppColors.mainColor.withOpacity(.4),
            child: widget.activeStep >= 0
                ? SizedBox(
                    child: Text(
                      '1',
                      style: AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          // title: 'Verification',
          customTitle: Text(
            'Verification',
            style: AppTextStyles.black400Size12TextStyle,
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: widget.activeStep == 1 ? 24 : 16,
            backgroundColor: widget.activeStep >= 1
                ? AppColors.mainColor
                : AppColors.mainColor.withOpacity(.4),
            child: widget.activeStep >= 1
                ? SizedBox(
                    child: Text(
                      '2',
                      style: AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          customTitle: Text(
            'Preferences',
            style: AppTextStyles.black400Size12TextStyle,
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: widget.activeStep == 2 ? 24 : 16,
            backgroundColor: widget.activeStep >= 2
                ? AppColors.mainColor
                : AppColors.mainColor.withOpacity(.4),
            child: widget.activeStep >= 2
                ? SizedBox(
                    child: Text(
                      '3',
                      style: AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          customTitle: Text(
            'Allergies',
            style: AppTextStyles.black400Size12TextStyle,
          ),
        ),
      ],
      onStepReached: (index) => setState(() => widget.activeStep = index),
    );
  }
}
