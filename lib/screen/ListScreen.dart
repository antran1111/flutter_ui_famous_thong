import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';


//design list of useful headers and description box

// todo : create data in separate file, load data using listview builder


class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Famous Guide App'),
      ),
      body: DetailsScrollView(),
//
//
//      Column(
//        children: <Widget>[
//          DetailsScrollView(),
//
//          ],
//
//      ),
    );
  }
}




class DetailsScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[

        FamousBox(
          openLink: ()
          async{
           const url = 'https://instagram.com';
           if(await canLaunch(url)) {
             await launch(url);

           } else {
             throw 'Could not launch $url';
           }

          },
          title: 'Boobs = instagram famous',
        ),
        FamousBox(
          openLink: () {
            launch('https://instagram.com',
              enableJavaScript: true,);

          },
          title: 'Instagram page with javascript',
        ),

        FamousBox(
          openLink: () {
            launch('https://stackoverflow.com',
                enableJavaScript: true,);

          },
          title: 'Stackoverflow Famous #1 tip',
        ),
        FamousBox(
          openLink: () {
            launch('https://facebook.com',
              enableJavaScript: true,);

          },
          title: 'Facebook Famous #1 tip',
        ),
        FamousBox(
          openLink: () {
            launch('https://myspace.com',
              enableJavaScript: true,);

          },
          title: 'Myspace Famous #1 tip',
        ),
        FamousBox(
         title: 'Go to the Detail Screen!',
          openLink: () => Navigator.pushNamed(context, detailScreenRoute),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}

class FamousBox extends StatelessWidget {
  final Function openLink;
  final title;
  final image;

  FamousBox({this.openLink, this.title, this.image}); //put url launcher link here




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openLink,
      child: Column (
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            child: Text("$title /n Become Famous!"),
            color: Colors.teal[100],
          ),
          //replace asset image link with $image later
          Image.asset('assets/instagramfamous1.png',
          fit: BoxFit.fill,),
        ],
      )



    );
  }
}
