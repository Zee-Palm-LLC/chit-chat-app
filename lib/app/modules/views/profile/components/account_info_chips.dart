import 'package:flutter/material.dart';

class AccountInfoChips extends StatelessWidget {
  final String info;
  const AccountInfoChips({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child:  Center(
          child: Text(
        info,
        style:const  TextStyle(color: Colors.blue,fontSize: 12),
      )),
    );
  }
}
