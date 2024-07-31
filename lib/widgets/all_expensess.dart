import 'package:flutter/material.dart';
import 'package:responsive_app/cors/models/all_expensess_item_model.dart';

import '../cors/app_images.dart';
import '../cors/constants/constant.dart';
import 'all_expensess_header.dart';
import 'all_expensess_items.dart';

class AllExpensess extends StatefulWidget {
  const AllExpensess({super.key, this.index});

  @override
  final int? index;

  @override
  State<AllExpensess> createState() => _AllExpensessState();
}

class _AllExpensessState extends State<AllExpensess> {


  // List to keep track of which item is selected
  List<bool> isSelectedList = [];

  @override
  void initState() {
    super.initState();
    // Initialize the selection state list with false values
    isSelectedList = List<bool>.filled(items.length, false);

    // Set the item at index 0 as selected initially
    if (items.isNotEmpty) {
      isSelectedList[0] = true;
    }

    // If there's an initial index and it is different from 0, update it
    if (widget.index != null && widget.index! < items.length && widget.index != 0) {
      isSelectedList[0] = false;
      isSelectedList[widget.index!] = true;
    }
  }

  void _onItemPressed(int index) {
    setState(() {
      // Set all to false
      for (int i = 0; i < isSelectedList.length; i++) {
        isSelectedList[i] = false;
      }
      // Set the pressed item to true
      isSelectedList[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column( 
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: items.asMap().entries.map((entry) {
              int index = entry.key;
              var item = entry.value;
    
              return Expanded(
                child: GestureDetector(
                  onTap: () => _onItemPressed(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensessItems(
                      allExpensessItemModel: item,
                      isSelected: isSelectedList[index],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
