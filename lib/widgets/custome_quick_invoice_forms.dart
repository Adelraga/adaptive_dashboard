import 'package:flutter/material.dart';

import 'title_text_field.dart';

class CustomeQuickInvoiceForms extends StatelessWidget {
  const CustomeQuickInvoiceForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: "cutome Name",
              hintText: 'type Custom Name',
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TitleTextField(
                title: "cutome Email",
                hintText: 'type Custom email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: "Item Name",
              hintText: 'type Custom Name',
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TitleTextField(
                title: "Item Count",
                hintText: 'USD',
              ),
            ),
            
          ],
        )
      ],
    );
  }
}
