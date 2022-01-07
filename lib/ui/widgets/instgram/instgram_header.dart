import 'package:first_project/models/user_model.dart';
import 'package:flutter/material.dart';

class InstgramHeaders extends StatelessWidget {
  UserModel user;

  InstgramHeaders(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      margin: EdgeInsets.only(top: 5,),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(user.url_image),
          ),
          Text(
            user.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
