import 'package:flutter/material.dart';
class four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text('اختر ماذا تريد',style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ) ,
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset('images/123.jpg',),
            Divider(height: 30,),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 300,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'five');
                      },
                      color: Colors.red
                      ,child: Text('اضافة منشور ',style: TextStyle(fontSize: 40,color: Colors.white),),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 100,
                    width: 300,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'place');
                      },
                      color: Colors.blueGrey
                      ,child: Text('الوصول للمكان ',style: TextStyle(fontSize: 40,color: Colors.white),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('الوصول الينا',style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20,top: 10),
                  width: MediaQuery.of(context).size.width*1.0,
                  color: Colors.red,
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: <Widget>[
                      Text('العنوان',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('القاهره ,مدينة نصر',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('مكرم عبيد',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),

                    ],
                  ),),
                Container(
                  margin: EdgeInsets.only(bottom: 20,top: 10),
                  width: MediaQuery.of(context).size.width*1.0,
                  color: Colors.blueGrey,
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: <Widget>[
                      Text('رقم الهاتف',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('01064871625',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('01152591399',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),

                    ],
                  ),),
                Container(
                  margin: EdgeInsets.only(bottom: 20,top: 10),
                  width: MediaQuery.of(context).size.width*1.0,
                  color: Colors.black,
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: <Widget>[
                      Text('عنوان البريد الالكتروني ',style: TextStyle(fontSize: 30,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('khaledmshehata1997@gmail.com',style: TextStyle(fontSize: 22,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('hayammagdy257@gmail.com',style: TextStyle(fontSize: 22,color: Colors.white),textDirection: TextDirection.rtl,),
                      Text('norayhya119@gmail.com',style: TextStyle(fontSize: 22,color: Colors.white),textDirection: TextDirection.rtl,),

                    ],
                  ),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

