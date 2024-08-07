import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/cors/app_images.dart';
import 'package:responsive_app/cors/models/all_expensess_item_model.dart';
import 'package:responsive_app/cors/styles.dart';

class AllExpensessItems extends StatelessWidget {
  const AllExpensessItems(
      {super.key,
      required this.allExpensessItemModel,
      required this.isSelected});

  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected ? Color(0xFF4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
            color: isSelected ? Colors.white : null,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16
                .copyWith(color: isSelected ? Colors.white : Colors.black),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: isSelected ? Colors.white : Colors.black),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24
                .copyWith(color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image, this.color});
  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60,
              // maxHeight: 80,
            ),
           
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child:
                    Center(child: SvgPicture.asset(fit: BoxFit.scaleDown, image)),
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: 180 * 3.14 / 180,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 22,
            color: color,
          ),
        ),
      ],
    );
  }
}
