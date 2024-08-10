import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class VerificationAndSetUpSteps extends StatefulWidget {
  const VerificationAndSetUpSteps({
    super.key,
    required this.isFirstPage,
    required this.activeStep,
    this.onStepReached,
  });

  final bool isFirstPage;
  final int activeStep;
  final Function(int)? onStepReached;

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
      enableStepTapping: false,
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
                      style: widget.activeStep == 0
                          ? AppTextStyles.white600Size20TextStyle
                          : AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          // title: 'Verification',
          customTitle: Center(
            child: Padding(
              padding: widget.activeStep == 0
                  ? const EdgeInsets.only(top: 4)
                  : EdgeInsets.zero,
              child: Text(
                'Verification',
                style: widget.activeStep == 0
                    ? AppTextStyles.black600Size10TextStyle
                    : AppTextStyles.black400Size10TextStyle
                        .copyWith(color: AppColors.blackColor.withOpacity(.6)),
              ),
            ),
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
                      style: widget.activeStep == 1
                          ? AppTextStyles.white600Size20TextStyle
                          : AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          customTitle: Center(
            child: Padding(
              padding: widget.activeStep == 1
                  ? const EdgeInsets.only(top: 4)
                  : EdgeInsets.zero,
              child: Text(
                'Preferences',
                style: widget.activeStep == 1
                    ? AppTextStyles.black600Size10TextStyle
                    : AppTextStyles.black400Size10TextStyle
                        .copyWith(color: AppColors.blackColor.withOpacity(.6)),
              ),
            ),
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
                      style: widget.activeStep == 2
                          ? AppTextStyles.white600Size20TextStyle
                          : AppTextStyles.white400Size14TextStyle,
                    ),
                  )
                : const SizedBox(),
          ),
          customTitle: Center(
            child: Padding(
              padding: widget.activeStep == 2
                  ? const EdgeInsets.only(top: 4)
                  : EdgeInsets.zero,
              child: Text(
                'Allergies',
                style: widget.activeStep == 2
                    ? AppTextStyles.black600Size10TextStyle
                    : AppTextStyles.black400Size10TextStyle
                        .copyWith(color: AppColors.blackColor.withOpacity(.6)),
              ),
            ),
          ),
        ),
      ],
      onStepReached: widget.onStepReached,
    );
  }
}
