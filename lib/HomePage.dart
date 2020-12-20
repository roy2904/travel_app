import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Where would you like to travel?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Search places, events....',
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Best Destinations',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/images/kyoto.jpg', title: 'Kyoto'),
                          makeItem(
                              image: 'assets/images/india.jpg', title: 'India'),
                          makeItem(
                              image: 'assets/images/london.jpg',
                              title: 'London'),
                          makeItem(
                              image: 'assets/images/newyork.jpg',
                              title: 'New York'),
                          makeItem(
                              image: 'assets/images/paris.jpg', title: 'Paris'),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.hotel,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.flight, color: Colors.red),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.event, color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Best Hotels',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/images/newyork2.jpg',
                              title: 'New York'),
                          makeItem(
                              image: 'assets/images/usa.jpg', title: 'America'),
                          makeItem(
                              image: 'assets/images/thailand.jpg',
                              title: 'Khlong Sok'),
                          makeItem(
                              image: 'assets/images/vietnam.jpg',
                              title: 'Vietnam'),
                          makeItem(
                              image: 'assets/images/thailand2.jpg', title: 'Thailand'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
