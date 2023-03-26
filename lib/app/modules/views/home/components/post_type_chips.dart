import 'package:chit_chat/app/data/enums/post_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostTypeChips extends StatelessWidget {
  final PostType postType;
  final VoidCallback onTap;
  final bool isSelected;
  const PostTypeChips(
      {super.key,
      required this.postType,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25)),
        padding:const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
            child: Text(
          postType.name.capitalizeFirst.toString(),
          style: TextStyle(color: isSelected ? Colors.blue : Colors.black),
        )),
      ),
    );
  }
}
