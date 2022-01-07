import 'package:first_project/data/dummy_data.dart';
import 'package:first_project/ui/widgets/instgram/instgram_header.dart';
import 'package:first_project/ui/widgets/instgram/instgram_post.dart';
import 'package:flutter/material.dart';

class InstgramScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "INSTEGRAM",
          style: TextStyle(fontSize: 20,color: Colors.green.shade200),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.camera_alt_outlined,color: Colors.green.shade200,),
        actions: [
          Icon(Icons.send,color: Colors.green.shade200,),
          SizedBox(width: 5,),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: users.map((e){
                    return InstgramHeaders(e);
                  }).toList(),
                ),
              ),
              Divider(),
              Column(
                children: posts.map((e){
                  return InstgramPost(e);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


