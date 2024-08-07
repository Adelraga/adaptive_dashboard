import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/cors/app_images.dart';
import 'package:responsive_app/cors/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const ShapeDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.assetsSvgsCardBackground)),
          color: Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name Card",
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "syah Bandi",
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.assetsSvgsGallery),
            ),
            Expanded(child: const SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0225 8987 5556 9756",
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20 - 124",
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
