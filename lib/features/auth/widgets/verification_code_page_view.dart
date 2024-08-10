import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class VerificationCodePageView extends StatefulWidget {
  const VerificationCodePageView({
    super.key,
    required this.pinCodeController,
  });

  final TextEditingController pinCodeController;

  @override
  State<VerificationCodePageView> createState() =>
      _VerificationCodePageViewState();
}

class _VerificationCodePageViewState extends State<VerificationCodePageView> {
  DateTime timer = DateTime.now().add(
    const Duration(seconds: 30),
  );
  bool isTimerDone = false;

  @override
  Widget build(BuildContext context) {
    timer = DateTime.now().add(
      const Duration(seconds: 30),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Verification Code',
            style: AppTextStyles.black600Size22TextStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'The code will send to +20-102-000-3000',
              style: AppTextStyles.black400Size12TextStyle.copyWith(
                color: AppColors.gray6Color,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Form(
            child: PinCodeTextField(
              appContext: context,
              controller: widget.pinCodeController,
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(
                  12,
                ),
                activeColor: AppColors.lightGrayColor,
                inactiveColor: AppColors.lightGrayColor,
                selectedColor: AppColors.grayColor,
                fieldHeight: 60,
                fieldWidth: 70,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pin code is required';
                } else if (value.length < 4) {
                  return 'Pin code is not valid';
                }
                return null;
              },
            ),
          ),
          isTimerDone
              ? Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        timer = DateTime.now().add(
                          const Duration(seconds: 30),
                        );
                        isTimerDone = false;
                      });
                    },
                    child: Text(
                      'Didn\'t you receive and code? Resend code',
                      style: AppTextStyles.blue400Size14UnderLineTextStyle
                          .copyWith(
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Resend Code in ',
                      style: AppTextStyles.black400Size12TextStyle.copyWith(
                        color: AppColors.gray6Color,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: TimerCountdown(
                        timeTextStyle:
                            AppTextStyles.black400Size12TextStyle.copyWith(
                          color: AppColors.gray6Color,
                        ),
                        onEnd: () {
                          setState(() {
                            isTimerDone = true;
                          });
                        },
                        endTime: timer,
                        format: CountDownTimerFormat.secondsOnly,
                        enableDescriptions: false,
                        spacerWidth: 3,
                      ),
                    ),
                    Text(
                      's',
                      style: AppTextStyles.black400Size12TextStyle.copyWith(
                        color: AppColors.gray6Color,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
