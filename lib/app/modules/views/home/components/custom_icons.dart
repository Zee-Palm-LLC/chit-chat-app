import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcons extends StatelessWidget {
  final String src;
  const CustomIcons({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.withOpacity(0.09)),
      child: SvgPicture.asset(src),
    );
  }
}
