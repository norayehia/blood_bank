import 'package:bloodbank/Model.dart';
import 'package:flutter/material.dart';

import 'Network.dart';
class ldonor extends StatefulWidget {
  @override
  _ldonorState createState() => _ldonorState();
}

class _ldonorState extends State<ldonor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Scaffold(
        appBar: new AppBar(
          title: new Text('our donar'),
          backgroundColor: Colors.blueGrey,
        ),
        body: FutureBuilder(
            future: getItem(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Donor> users = snapshot.data;
                return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Name : ${users[index].name}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'Email : ${users[index].email}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'Phone : ${users[index].age}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'address : ${users[index].address}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ), Text(
                              'Type : ${users[index].type}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),


    );
  }
}
