import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/consts.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';
import 'package:flutter_ui_famous_thong/screen/ui_samples/onboarding_screen.dart';



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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.bottomRight,
                    end: FractionalOffset.topLeft,
                    colors: [
                      Colors.red,
                      Colors.red[300],
                    ]

                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: 100,
              child:  Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Instagram Famous!', style: kTextStyle1,textAlign: TextAlign.center,),
              ),

            ),
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.bottomRight,
                      end: FractionalOffset.topLeft,
                      colors: [
                        Colors.red,
                        Colors.yellow[300],
                      ]

                  ),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, beeUIScreen);

                  },
                  child: Text('View Bee Sample!'),
                ),),
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.bottomRight,
                      end: FractionalOffset.topLeft,
                      colors: [
                        Colors.black,
                        Colors.yellow[300],
                      ]

                  ),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, onboardingScreen);

                  },
                  child: Text('View Onboarding Sample!'),
                ),),
            ),

          ],

      ),
    );
  }
}
