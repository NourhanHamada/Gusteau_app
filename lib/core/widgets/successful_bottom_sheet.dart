import 'package:flutter/material.dart';
import 'package:gusteau/core/extension.dart';

Future showSuccessfulBottomSheet(context) async {
  return await showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    builder: (context) {
      return Container(
        width: context.screenWidth,
        padding: const EdgeInsets.all(32),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SvgPicture.asset(AppAssets.checkCircle),
            Text('SUCCESS'),
          ],
        ),
      );
    },
  );
}
