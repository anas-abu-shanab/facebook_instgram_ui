
import 'package:first_project/models/posts_model.dart';
import 'package:flutter/material.dart';

class FacebookStoris extends StatelessWidget {

  PostsModel e;


  FacebookStoris(this.e);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.network(e.post_image,fit: BoxFit.cover,),
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: 2.5),
          clipBehavior: Clip.antiAlias,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: 2.5),
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
        Positioned(
          child: Container(
            child: Text(e.user.name,
              style: TextStyle(fontSize: 15,color: Colors.white),
            ),
            width: 120,
            alignment: Alignment.center,
          ),
          bottom: 10,

        ),
        Positioned(
          top:15,
          left : 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(e.user.url_image),
            ),
          ),
        ),
      ],
    );
  }
}