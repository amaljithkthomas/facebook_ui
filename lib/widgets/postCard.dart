import 'package:facebook_ui/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/assets.dart';

class PostCard extends StatelessWidget {
  final String? avatar;
  final String? profileName;
  final bool? verifiedProfile;
  final String? postTime;
  final String? postImage;
  final String? postTittle;
  final String? postLikeUpdate;
  final String? postCommentUpdate;
  final String? postShareUpdate;

  PostCard({
    required this.avatar,
    required this.profileName,
    this.verifiedProfile = false,
    this.postTime,
    required this.postImage,
    this.postTittle,
    this.postLikeUpdate,
    this.postCommentUpdate,
    this.postShareUpdate

  });

  Widget postCardHeader() {
    Widget ticketWidget;
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            profileName!,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          verifiedProfile! ? ticketWidget = Bluetick() : const SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text((postTime != null) ? postTime! : "just now"),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Show more option");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget postImageSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        postImage!,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget postTittleSection() {
    return Container(
      margin: EdgeInsets.only(
        //top: 5,
        bottom: 10,
      ),
      child: Text(
        (postTittle != null) ? postTittle! : "",
        style: TextStyle(fontSize: 19),
      ),
    );
  }

  Widget displayCount({String? label}) {
    return Text(
      (label != null)? label :"500",
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget postFooterSection() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displayCount(label: postLikeUpdate)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayCount(label: postCommentUpdate),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "comment",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayCount(label: postShareUpdate),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "share",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Widget tickWidget;
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postTittleSection(),
          postImageSection(context),
          postFooterSection(),
        ],
      ),
    );
  }
}
