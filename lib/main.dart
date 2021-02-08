// Goodluck Caiser Malata
// Please refer to the readMe file
// for clarity sake, Please view comments accompanied with the code

import 'package:flutter/material.dart';
import 'body_shapes.dart';
import 'description.dart';

// variable color used for different widgets or icons throughout the project
const appbackground = Color(0xFFECF0F1);
const container_color = Color(0xFFF5F5F5);
const textcolour = Color(0xFF403B58);
const buttoncolour = Color(0xFFC0C0C0);

void main() => runApp(MyApp());

// main file where code will be executed
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        // header of the screen
        drawer: Drawer(
          child: ListView(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Grocery',
            style:
                TextStyle(color: textcolour, fontFamily: 'fonts/Lemonada.tff'),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search), color: Colors.black, onPressed: null),
            IconButton(
                icon: Icon(Icons.settings),
                color: Colors.black,
                onPressed: null)
          ],
          centerTitle: true,
          backgroundColor: appbackground,
        ),
        // body of the screen
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Cards(
                    path: Image(image: AssetImage('images/download.jpg')),
                  ),
                ),
                food_description()
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Cards(
                    path: Image(image: AssetImage('images/download(2).jpg')),
                  ),
                ),
                food_description()
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Cards(
                    path: Image(image: AssetImage('images/download(1).gif')),
                  ),
                ),
                food_description()
              ],
            ))
          ],
        ),
        // footer of the screen
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.black,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                backgroundColor: Colors.black,
                label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'E-mail')
          ],
        ),
      ),
    );
  }
}
