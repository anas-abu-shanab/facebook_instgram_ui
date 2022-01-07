import 'package:first_project/models/posts_model.dart';
import 'package:first_project/models/user_model.dart';

List<UserModel> users = [
  UserModel("anas", "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
  UserModel("ahmed", 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  UserModel("khaled", 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
  UserModel("azeez", 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
  UserModel("waled", 'https://images.unsplash.com/photo-1563237023-b1e970526dcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
  UserModel("ali", 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  UserModel("majd", 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
  UserModel("yazan", 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
];

List<PostsModel> posts = [
  PostsModel(users[0],
      "القدس عاصمة فلسطين",
      'https://media.istockphoto.com/photos/jerusalem-picture-id1154113791',
      720,
      209,
      "3 mins ago"
  ),
  PostsModel(users[4],
      "القدس لنا",
      'https://images.unsplash.com/photo-1529079875474-0a66a1f176d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      120,
      70,
      "47 mins ago"
  ),
  PostsModel(users[3],
      "القدس لنا",
      'https://images.unsplash.com/photo-1575667456742-4269014e68aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      900,
      483,
      "1 h ago"
  ),
  PostsModel(users[2],
      "القدس لنا",
      'https://images.unsplash.com/photo-1516438305764-bd2d770f94bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=787&q=80',
      193,
      54,
      "19 mins ago"
  ),
  PostsModel(users[6],
      "القدس لنا",
      'https://images.unsplash.com/photo-1565486514269-c07271f0a794?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=865&q=80',
      93,
      23,
      "2 h ago"
  ),
  PostsModel(users[5],
      "القدس لنا",
      'https://images.unsplash.com/photo-1566741946960-2d0cd7a898f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1486&q=80',
      1083,
      720,
      "22 mins ago"
  ),
];