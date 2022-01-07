import 'package:first_project/models/user_model.dart';

class PostsModel{
  UserModel user;
  String post_content;
  String post_image;
  String timeAgo;
  int nofViews;
  int nofLikes;

  PostsModel(this.user, this.post_content, this.post_image, this.nofViews, this.nofLikes,this.timeAgo);
}