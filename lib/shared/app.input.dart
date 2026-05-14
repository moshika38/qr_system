import 'package:flutter/material.dart';
import 'package:qr_student_system/core/utils/color.dart';

class AppInput extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final VoidCallback? clickSuffixIcon;
  final VoidCallback? clickPrefixIcon;
  final bool isPasswordEnter;
  const AppInput({
    super.key,
    required this.hintText,
    this.labelText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.clickSuffixIcon,
    this.clickPrefixIcon, required this.isPasswordEnter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText != null
            ? Text(
                labelText!.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,

                  fontSize: 11,
                ),
              )
            : SizedBox.shrink(),

        SizedBox(height: 5),
        SizedBox(
          height: 45,
          child: TextField(
            controller: controller,
            obscureText: isPasswordEnter,
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null
                  ? GestureDetector(
                      onTap: clickPrefixIcon,
                      child: Icon(
                        prefixIcon,
                        color: AppColors.pureBlack.withAlpha(179),
                        size: 18,
                      ),
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: clickSuffixIcon,
                      child: Icon(
                        suffixIcon,
                        color: AppColors.pureBlack.withAlpha(179),
                        size: 18,
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.pureBlack, width: 0.7),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.pureBlack, width: 0.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
              ),
              hintText: hintText,
              hintStyle: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: AppColors.neutralColor),
            ),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
