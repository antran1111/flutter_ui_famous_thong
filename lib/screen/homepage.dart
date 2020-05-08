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
          children: <Widget>[
            Text('Instagram Famous!'),
            Container(
              color: Colors.blueGrey,
              child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, listScreenRoute);

                  },
                  child: Text('Enter!'),
            ),),

          ],

      ),
    );
  }
}
