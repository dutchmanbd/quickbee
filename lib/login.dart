import 'package:flutter/material.dart';
import 'package:quickbee/home.dart';
import 'stacked_icons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackIcons(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "Quick Bee",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0, bottom: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      child: new Text(
                        "Forgot Password?",
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Color(0xFF18D191),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
