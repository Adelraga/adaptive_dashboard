import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_dots.dart';
import 'package:responsive_app/widgets/dots_indicator.dart';

import '../cors/styles.dart';
import 'my_cards_page_view.dart';
import 'transction_history.dart';

class MyCardSectin extends StatefulWidget {
  const MyCardSectin({super.key});

  @override
  State<MyCardSectin> createState() => _MyCardSectinState();
}

class _MyCardSectinState extends State<MyCardSectin> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(height: 20),
        MyCardsPageView(pageController: pageController,),
        SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex,),


      ],
    );
  }
}
