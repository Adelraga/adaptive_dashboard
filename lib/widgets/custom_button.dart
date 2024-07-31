import 'package:flutter/material.dart';
import 'package:responsive_app/cors/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.isText,
    required this.title,
  });
  final bool isText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: isText ? Colors.transparent : Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: isText
                ? AppStyles.styleSemiBold18.copyWith(color: Color(0xFF4EB7F2))
                : AppStyles.styleSemiBold18,
          )),
    );
  }
}
