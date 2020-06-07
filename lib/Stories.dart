import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://pbs.twimg.com/profile_images/997713435897966593/Wbu0CDZV_400x400.jpg"),
              ),
            ),
          ),
          Text('shintaro80958'),
        ],
      ),
    );
  }
}

class StoriesGroupe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            child: Story(),
          );
        },
      ),
    );
  }
}