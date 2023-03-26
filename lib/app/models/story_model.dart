// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chit_chat/app/data/constants/assets.dart';

class Story {
  String userImage;
  bool isViewed;
  Story({
    required this.userImage,
    required this.isViewed,
  });
}

List<Story> dummyStories = [
  Story(userImage: CustomAssets.kUser2, isViewed: false),
  Story(userImage: CustomAssets.kUser3, isViewed: true),
  Story(userImage: CustomAssets.kUser4, isViewed: true),
];
