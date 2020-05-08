import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/consts.dart';


//todo update: Thongs, need more thongs to be famous,
// also text is not scrollable, try to fix that, and also asset image is not loading inside box decoration image



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
        SafeArea(
          child: Container(height: 100),
        ),
        RectangleBorderCard2(),
        Expanded(
            flex: 1,
            child: ScrollableText(detailText: '$loremText\n$loremText$loremText\n$loremText$loremText\n$loremText$loremText\n$loremText',)),






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




class RectangleBorderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[100],
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
    );
  }
}

//getting problems trying to load the image, not showing up on both
class RectangleBorderCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/painting/box_decoration.png'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.black,
          width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
