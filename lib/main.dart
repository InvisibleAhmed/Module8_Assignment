/*
Kazi Shahed Ahmed
Flutter Batch -4
Module - 8: Assignment
* */


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: isPortrait
          ? PortraitLayout()
          : LandscapeLayout(),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Profile Picture
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: ClipOval(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2014/09/07/22/33/motorbike-438464_1280.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Name
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Shahed',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Paragraph
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Suspendisse potenti. Nunc nec neque quis ligula venenatis '
                  'mattis. Vestibulum venenatis vehicula risus, eget posuere '
                  'libero tempor ac.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),

          // Images (2 rows, 3 columns)
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              6,
                  (index) => Image.network(
                'https://cdn.pixabay.com/photo/2014/07/31/23/10/biker-407123_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Profile Picture (Left side)
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          child: ClipOval(
            child: Image.network(
              'https://cdn.pixabay.com/photo/2014/09/07/22/33/motorbike-438464_1280.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Right Side (Name, Paragraph, Images)
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Name
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Shahed',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Paragraph
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Suspendisse potenti. Nunc nec neque quis ligula venenatis '
                        'mattis. Vestibulum venenatis vehicula risus, eget posuere '
                        'libero tempor ac.',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Images (2 rows, 3 columns)
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    6,
                        (index) => Image.network(
                      'https://cdn.pixabay.com/photo/2014/07/31/23/10/biker-407123_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
