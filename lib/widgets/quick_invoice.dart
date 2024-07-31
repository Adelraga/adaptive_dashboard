import 'package:flutter/material.dart';
import 'package:responsive_app/cors/styles.dart';

import 'custom_button.dart';
import 'custome_quick_invoice_forms.dart';
import 'latest_transaction_list_view.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            height: 16,
          ),
          LatestTransactionListView(),
          Divider(),
          SizedBox(
            height: 16,
          ),
          CustomeQuickInvoiceForms(),
         
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                  isText: true,
                  title: "Add more details",
                )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: CustomButton(isText: false, title: 'Send money')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
