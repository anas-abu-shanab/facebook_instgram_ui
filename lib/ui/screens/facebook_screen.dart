import 'package:first_project/data/dummy_data.dart';
import 'package:first_project/models/posts_model.dart';
import 'package:first_project/ui/widgets/facebook/facebook_post.dart';
import 'package:first_project/ui/widgets/facebook/facebook_storis.dart';
import 'package:first_project/ui/widgets/instgram/instgram_header.dart';
import 'package:flutter/material.dart';

class FacebookScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            // shadowColor: Colors.transparent,
            title: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10),
                  hintText: "search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt,color: Colors.black45,),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 25,
                child: Image.asset('assets/icons/messenger.png',),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Storis",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text("See Archive  >",
                    style: TextStyle(fontSize: 15,),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: posts.map((e){
                    return FacebookStoris(e);
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Column(
                children: posts.map((e){
                  return FacebookPost(e);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

