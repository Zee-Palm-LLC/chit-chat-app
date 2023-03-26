// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chit_chat/app/data/constants/assets.dart';
import 'package:chit_chat/app/models/story_model.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  const StoryCard({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: story.isViewed ? Colors.transparent : Colors.blue)),
      child: Container(
        height: 80,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(story.userImage), fit: BoxFit.cover)),
      ),
    );
  }
}
