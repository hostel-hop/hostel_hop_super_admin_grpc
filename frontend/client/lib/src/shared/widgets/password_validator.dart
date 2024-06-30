import 'package:flutter/material.dart';
import 'package:hostel_hop_super_admin/src/shared/theme/text_themes.dart';

class PasswordValidator extends StatelessWidget {
  const PasswordValidator({
    required this.password,
    super.key,
  });

  final String password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'a',
                style: password.contains(RegExp('[a-z]'))
                    ? TextThemes.green.titleLarge
                    : TextThemes.secondaryWithOpacity.titleLarge,
              ),
              Text(
                'Lowercase',
                style: password.contains(RegExp('[a-z]'))
                    ? TextThemes.green.bodySmall
                    : TextThemes.secondaryWithOpacity.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'A',
                style: password.contains(RegExp('[A-Z]'))
                    ? TextThemes.green.titleLarge
                    : TextThemes.secondaryWithOpacity.titleLarge,
              ),
              Text(
                'Uppercase',
                style: password.contains(RegExp('[A-Z]'))
                    ? TextThemes.green.bodySmall
                    : TextThemes.secondaryWithOpacity.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '#',
                style: password.contains(
                  RegExp(
                    r'[!@#$%^&*(),.?":{}|<>`~+_|^=;-]',
                  ),
                )
                    ? TextThemes.green.titleLarge
                    : TextThemes.secondaryWithOpacity.titleLarge,
              ),
              Text(
                'Special',
                style: password.contains(
                  RegExp(
                    r'[!@#$%^&*(),.?":{}|<>`~+_|^=;-]',
                  ),
                )
                    ? TextThemes.green.bodySmall
                    : TextThemes.secondaryWithOpacity.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '123',
                style: password.contains(
                  RegExp(
                    r'\d',
                  ),
                )
                    ? TextThemes.green.titleLarge
                    : TextThemes.secondaryWithOpacity.titleLarge,
              ),
              Text(
                'Number',
                style: password.contains(
                  RegExp(
                    r'\d',
                  ),
                )
                    ? TextThemes.green.bodySmall
                    : TextThemes.secondaryWithOpacity.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '8+',
                style: password.length >= 8
                    ? TextThemes.green.titleLarge
                    : TextThemes.secondaryWithOpacity.titleLarge,
              ),
              Text(
                'Characters',
                style: password.length >= 8
                    ? TextThemes.green.bodySmall
                    : TextThemes.secondaryWithOpacity.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
