import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Ninja()
  ));
}
class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      appBar: AppBar(
        title: Text("Ninja App"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0,30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/thor.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 10),
            Text(
              'Thor',
              style: TextStyle(
                color: Colors.amber[600],
                letterSpacing: 1.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text(
                'Ninja Level',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 20),
            Text(
              '$count',
              style: TextStyle(
                  color: Colors.amber[600],
                  letterSpacing: 1.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 20 ),
                Text('oudombun262@gmail.com',
                    style: TextStyle(
                      color: Colors.grey
                    ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

