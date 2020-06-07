import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Post extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://pbs.twimg.com/profile_images/997713435897966593/Wbu0CDZV_400x400.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text('shintaro80958'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                    icon: Icon(Icons.more_vert),
                  onPressed: (){
                      print('pressed');
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Image.network('https://pbs.twimg.com/media/DC17NjRUMAE2AtP?format=jpg&name=small'),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: (){
                        print('pressed');
                      },
                      iconSize: 25,
                    ),
                    IconButton(
                      icon: Icon(Icons.mode_comment),
                      onPressed: (){
                        print('pressed');
                      },
                      iconSize: 25,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.paperPlane),
                      onPressed: (){
                        print('pressed');
                      },
                      iconSize: 25,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  icon: Icon(Icons.bookmark),
                  iconSize: 30,
                  onPressed: (){
                    print('pressed');
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('5月28日')),
        ),
      ],
    );
  }
}

class PostGroupe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Post(),
            );
          },
        ),
      ),
    );
  }
}