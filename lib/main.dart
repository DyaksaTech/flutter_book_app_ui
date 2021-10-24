import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  Widget Header() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              print('Menu button is pressed');
            },
            icon: Icon(Icons.menu),
            iconSize: 35,
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              print('Search Button pressed');
            },
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 35,
          )
        ],
      ),
    );
  }

  Widget InterFace() {
    return Container(
      margin: EdgeInsets.only(top: 35, left: 30, right: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Choose your best design book',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 35),
                  width: 280,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(22),
                    child: Text(
                      'Search...',
                      style: TextStyle(fontSize: 15),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 35, left: 10),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_book,
                  ),
                  iconSize: 30,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget BookRender({String BookName: '', String CreatorName: ''}) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, top: 20),
      margin: EdgeInsets.only(top: 5),
      width: 380,
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    BookName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Text(CreatorName,
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                )
              ]),
          Padding(
            padding: const EdgeInsets.only(right: 15, bottom: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
          Header(),
          InterFace(),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Top Favorites Books',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: <Widget>[
              BookRender(
                  BookName: 'The Story of Infinite and InfiNUX',
                  CreatorName: 'Danadyaksa'),
              BookRender(
                  BookName: 'The Story of Team Ninja and KOEI',
                  CreatorName: 'Tomonobu Itagaki'),
              BookRender(
                  BookName: 'Dead or Alive', CreatorName: 'Fame Douglas'),
              BookRender(
                  BookName: 'Kasumi Adventure', CreatorName: 'Hayate'),
              BookRender(
                  BookName: 'Ryu Hayabusa: Hero', CreatorName: 'Momiji'),
              BookRender(
                  BookName: 'Fight for Your Life',
                  CreatorName: 'Infinite Studio'),
              BookRender(
                  BookName: 'Alice Cinnamon Adventure',
                  CreatorName: 'Arch'),
              BookRender(BookName: 'Mugen Tenshin', CreatorName: 'Ryu'),
              BookRender(
                  BookName: 'The Ninja Hackers',
                  CreatorName: 'Ryu (feat. Arch)'),
            ],
          ),
        ]),
      ),
    );
  }
}
