import 'package:chit_chat/app/data/constants/assets.dart';
import 'package:chit_chat/app/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PostCard extends StatelessWidget {
  final PostModel post;
  final VoidCallback onTap;
  const PostCard({super.key, required this.post, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(post.userImage), fit: BoxFit.cover)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.userName,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${post.location} • ${post.postTime}',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Text(
                    post.postType.name.capitalizeFirst.toString(),
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.more_vert)
              ],
            ),
            const SizedBox(height: 10),
            Text(post.description),
            const SizedBox(height: 5),
            Hero(
              tag: post.id,
              child: Container(
                height: 140,
                width: double.maxFinite,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(post.image), fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.05),
                  ),
                  child: const Icon(Icons.attachment, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(CustomAssets.kHeart),
                const SizedBox(width: 2),
                Text('${post.likes.toString()}k'),
                const SizedBox(width: 10),
                SvgPicture.asset(CustomAssets.kChat, height: 25),
                const SizedBox(width: 2),
                Text('${post.comments.toString()}k'),
                const Spacer(),
                SvgPicture.asset(CustomAssets.kShare),
                const SizedBox(width: 5),
                SvgPicture.asset(CustomAssets.kSaved),
              ],
            )
          ],
        ),
      ),
    );
  }
}
