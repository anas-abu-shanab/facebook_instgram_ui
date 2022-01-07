import 'package:first_project/models/posts_model.dart';
import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {

  PostsModel _postsModel;

  FacebookPost(this._postsModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(_postsModel.user.url_image),
              ),
              SizedBox(width: 10,),
              Text(_postsModel.user.name,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 45,),
              Text(_postsModel.timeAgo,
                style: TextStyle(fontSize: 12,color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(top:10,bottom: 10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(_postsModel.post_image,fit: BoxFit.cover,),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 17),
                    width: 23,
                    child: Image.asset('assets/icons/like.png',),
                  ),
                  Positioned(
                    right: -10,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 23,
                      child: Image.asset('assets/icons/love.png',),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Text("${_postsModel.nofViews}",
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Text("${_postsModel.nofLikes} Comments",
                style: TextStyle(fontSize: 14,color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Divider(),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16,
                      child: Image.asset('assets/icons/like_outline.png',),
                    ),
                    SizedBox(width: 10,),
                    Text("Like",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16,
                      child: Image.asset('assets/icons/comment.png',),
                    ),
                    SizedBox(width: 10,),
                    Text("Comment",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
