import 'package:flutter/material.dart';

class AccountActionChip extends StatelessWidget {
  final String actionText;
  const AccountActionChip({super.key, required this.actionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.withOpacity(0.1)),
      child:  Text(actionText,
          style:const TextStyle(color: Colors.blue, fontSize: 14)),
    );
  }
}
