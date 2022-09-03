import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Mycard(),
));

class Mycard extends StatefulWidget {

  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {

  int staffLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('3nity ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/12.JPG'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text('Benedict Kelvin',
               style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                 fontSize: 24.0,
                 fontWeight: FontWeight.bold
               )
            ),
            SizedBox(height: 20.0),
            Text('STAFF OCCUPATION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text('Flutter Developer',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 20.0),
            Text('STAFF LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text('$staffLevel',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text('kelvineroc@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            staffLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}