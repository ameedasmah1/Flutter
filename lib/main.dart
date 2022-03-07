import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Profle(),
  ));
}

class Profle extends StatelessWidget {
  const Profle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 26, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:CircleAvatar(
                backgroundImage:AssetImage('assets/thumb.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
                thickness:1,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Chune-lie',
              style: TextStyle(color: Colors.amber[700],letterSpacing:1,fontSize: 22,fontWeight: FontWeight.bold)),
            SizedBox(height: 16,),
            Text('current ninja Level',
                style: TextStyle(color: Colors.grey[700],letterSpacing:1,fontSize: 16)),
            Text('8',
                style: TextStyle(color: Colors.grey[700],fontSize: 18)),
            SizedBox(height: 26,),
            Row(
              children:<Widget> [
                Icon(
                  Icons.email,
                  color:Colors.white,
                ),
                SizedBox(width: 8,),
                Text('Chune@gmail.com',
                    style: TextStyle(color: Colors.grey[700],letterSpacing:1.2,fontSize: 16)),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
