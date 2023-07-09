import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/color.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({
    Key? key,
    required this.data,
    this.isSelected = false,
    this.onTap,
    this.selectedColor = AppColor.actionColor,
  }) : super(key: key);

  final data;
  final Color selectedColor;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected ? AppColor.red : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColor.shadowColor.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(1, 2), // changes position of shadow
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: Icon(
              data["icon"],
              color: isSelected ? selectedColor : AppColor.textColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            data["name"],
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: AppColor.textColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
