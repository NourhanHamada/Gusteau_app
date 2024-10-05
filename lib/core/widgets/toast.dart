import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theming/app_colors.dart';

Future<bool?> showToast({
  required String message,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 3,
    backgroundColor: AppColors.blackColor.withOpacity(.5),
    textColor: AppColors.whiteColor,
    fontSize: 14.sp,
  );
}
