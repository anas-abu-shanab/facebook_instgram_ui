import 'dart:developer';

import 'package:first_project/models/posts_model.dart';
import 'package:flutter/material.dart';

class InstgramPost extends StatelessWidget {

  PostsModel post;

  InstgramPost(this.post);

  likeFunction(){
    log("Like");
  }

  commentFunction(){
    log("comment");
  }

  shareFunction(){
    log("shar");
  }

  saveFunction(){
    log("save");
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(post.user.url_image),
              ),
              SizedBox(width: 10,),
              Text(
                post.user.name,
                style: TextStyle(
                    color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(post.post_image,fit: BoxFit.cover,),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border,color: Colors.green.shade200,),
                onPressed: (){
                  likeFunction();
                },
              ),
              IconButton(
                icon: Icon(Icons.mode_comment_outlined,color: Colors.green.shade200,),
                onPressed: (){
                  commentFunction();
                },
              ),
              IconButton(
                icon: Icon(Icons.share_outlined,color: Colors.green.shade200,),
                onPressed: (){
                  shareFunction();
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.bookmark_border,color: Colors.green.shade200,),
                onPressed: (){
                  saveFunction();
                },
              ),
            ],
          ),
          Container(
            width: 300,
            child: Text(
                "${post.nofViews} views , liked by anas and ${post.nofLikes} others users",
              style: TextStyle(fontSize: 16,color: Colors.green.shade200),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
