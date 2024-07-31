import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cors/styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            // hintStyle: AppStyles.styleRegular16,
            fillColor: Color(0xFFFAFAFA),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
