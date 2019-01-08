import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Explore",
                      style: new TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text("Motor",
                                style: new TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: new Container(
                                decoration: new BoxDecoration(
                                  color: Color(0xFF2BD093),
                                  borderRadius: new BorderRadius.circular(5.0)
                                ),
                                child: new Column(
                                  children: <Widget>[
                                    new Icon(Icons.place)
                                  
                                  ],
                                )
                              ),
                              
                            ),
                            Expanded(
                              child: new Container(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: new Container(
                                color: Colors.redAccent,
                              ),
                              
                            ),
                            Expanded(
                              child: new Container(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
