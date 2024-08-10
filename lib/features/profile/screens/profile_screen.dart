import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gusteau/core/widgets/top_notch.dart';
import '../widgets/profile_account_section.dart';
import '../widgets/profile_personal_info.dart';
import '../widgets/profile_privacy_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopNotch(),
        const ProfilePersonalInfo(),
        Flexible(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            children: const [
              ProfileAccountSection(),
              ProfilePrivacySection(),
            ],
          ),
        ),
      ],
    );
  }
}