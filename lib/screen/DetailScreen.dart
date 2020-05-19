import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/consts.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';


//todo update: Thongs, need more thongs to be famous,
// also text is not scrollable, try to fix that, and also asset image is not loading inside box decoration image


//detail screens navigates to webview screen
//data from detail screen is obtained from list screen


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen Title'),
      ),
      body: DetailScreenBody(),
    );
  }
}


class DetailScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Title'),
        ExpandedCard(text1: 'Learn from the best of the best!'),
        Expanded(
            flex: 3,
            child: ScrollableText(detailText: '$loremText\n$loremText$loremText\n$loremText$loremText\n$loremText$loremText\n$loremText',)),
        Expanded(
          flex: 0,
          child: FlatButton(
            onPressed: () => Navigator.pushNamed(context, webScreenRoute),
            child: Text('Go to webview screen'),
          ),
        )
      ],
    );
  }
}


class ScrollableText extends StatelessWidget {
  final detailText;
  ScrollableText({this.detailText});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 600,
        color: Colors.teal[100],
        child: Text('Lorem ipsum yap yap\n$detailText'),
      ),
    );
  }
}


class ExpandedCard extends StatelessWidget {
  final text1;
  final image;

  ExpandedCard({
    @required this.text1, this.image
});


  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[300],
          image: DecorationImage(
            image: AssetImage('assets/instagramfamous1.png'),
//          fit: BoxFit.cover,
          ),
          border: Border.all(
            width: 8,
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        height:200,
        width: 500,
        child: Text('$text1',textAlign: TextAlign.center,),),
    );
  }
}