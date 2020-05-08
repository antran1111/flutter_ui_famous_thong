import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';


//design list of useful headers and description box


class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Famous Guide App'),
      ),
      body: Column(
        children: <Widget>[
          DetailsScrollView(),

          ],

      ),
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
            launch('https://stackoverflow.com',
                enableJavaScript: true,);

          },
          title: 'Instagram Famous #1 tip',
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
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


  FamousBox({this.openLink, this.title}); //put url launcher link here




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openLink,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text("$title /nHe'd have you all unravel at the"),
        color: Colors.teal[100],
      ),
    );
  }
}
