import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn How to become INSTAGRAM famous\\'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Instagram Famous!',textAlign: TextAlign.center,),
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                child: FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, listScreenRoute);

                    },
                    child: Text('Enter!'),
              ),),
            ),

            Expanded(
              child: Container(
                color: Colors.blueGrey[300],
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, beeUIScreen);

                  },
                  child: Text('View Bee Sample!'),
                ),),
            ),

          ],

      ),
    );
  }
}
