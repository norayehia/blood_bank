import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.blueGrey,
        title: Text(
          'بنك الدم',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 35),
                child: Image.asset('images/blood.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Login');
                      },
                      color: Colors.black,
                      child: Text(
                        'دخول',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Enter');
                },
                color: Colors.black,
                child: Text(
                  'تسجيل',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome to Blood Bank',
                      style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.red,
                    ),
                    Divider(
                      color: Colors.blueGrey,
                    ),
                    Text(
                      'By',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    Text(
                      'Hayam ; Noura ; Khaled',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
