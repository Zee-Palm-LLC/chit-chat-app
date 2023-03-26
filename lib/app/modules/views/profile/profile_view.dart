import 'package:chit_chat/app/data/constants/assets.dart';
import 'package:chit_chat/app/data/enums/post_type.dart';
import 'package:chit_chat/app/models/post_model.dart';
import 'package:chit_chat/app/modules/views/home/components/custom_icons.dart';
import 'package:chit_chat/app/modules/views/home/components/post_type_chips.dart';
import 'package:chit_chat/app/modules/views/home/post_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../home/components/post_card.dart';
import 'components/profile_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int selectedPostType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Profile",
            style: TextStyle(fontSize: 18, color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomIcons(src: CustomAssets.kChat),
          )
        ],
      ),
      body: AnimationLimiter(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: MediaQuery.of(context).size.width / 2,
                      child: FadeInAnimation(child: widget),
                    ),
                children: [
                  const SizedBox(height: 10),
                  const ProfileCard(),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                        itemCount: PostType.values.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return PostTypeChips(
                              isSelected:
                                  selectedPostType == index ? true : false,
                              onTap: () {
                                setState(() {
                                  selectedPostType = index;
                                });
                              },
                              postType: PostType.values[index]);
                        }),
                  ),
                  const SizedBox(height: 20),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PostCard(
                            onTap: () {
                              Get.to(() =>
                                  PostDetailPage(post: dummyPosts[index]));
                            },
                            post: dummyPosts[index]);
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: dummyPosts.length)
                ])),
      ),
    );
  }
}
