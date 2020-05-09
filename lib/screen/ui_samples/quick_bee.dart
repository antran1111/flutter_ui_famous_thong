import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class QuickBeeUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text('Example UI'),),
      body: QuickBeeBody(),
    );
  }
}


class QuickBeeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                margin: EdgeInsets.only(right: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.green,
                ),
                child: Icon(Icons.local_offer,color: Colors.white,),
              ),

              Container(
                alignment:Alignment.center,
                height: 60.0,
                width: 60.0,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.red,
                ),
                child: FaIcon(FontAwesomeIcons.twitch, color: Colors.white,),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

