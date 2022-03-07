import 'package:flutter/material.dart';
import 'Qutos.dart';

void main() {
  runApp(const MaterialApp(
    home: Profle(),
  ));
}

class Profle extends StatefulWidget {
  const Profle({Key? key}) : super(key: key);

  @override
  State<Profle> createState() => _ProfleState();
}

class _ProfleState extends State<Profle> {
  int fluteNumber = 0;
  List<Qutos> qutos = [
    Qutos(title:'Be yourself; everyone else is already taken',author: 'ameed' ),
    Qutos(title:'I have nothing to declare except my genius',author: 'Zeyad' ),
    Qutos(title:'The truth is rarely pure and never simple',author: 'Owias' ),
  ];
    Widget CustomCard(qutos) {
  return Card(
    color: Colors.grey[850],
      child: Column(
        children: [
          Container(
            color: Colors.grey[850],
            padding: const EdgeInsets.fromLTRB(8.0,8,8,8),
            width: MediaQuery.of(context).size.width,
            child: Column(
            children: [
              Text('${qutos.title}', style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,fontWeight: FontWeight.bold,
                  fontSize: 13)),
              Text('${qutos.author}', style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ],
            ),
          ),
        ],
      ),
  );
}

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
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                color: Colors.grey[800],
                height: 60.0,
                thickness: 1,
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Chune-lie',
                  style: TextStyle(
                      color: Colors.amber[700],
                      letterSpacing: 1,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 16,
              ),
              Text('current ninja Level',
                  style: TextStyle(
                      color: Colors.grey[700], letterSpacing: 1, fontSize: 16)),
              Text('$fluteNumber',
                  style: TextStyle(color: Colors.grey[700], fontSize: 18)),
              SizedBox(
                height: 26,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Chune@gmail.com',
                      style: TextStyle(
                          color: Colors.grey[700],
                          letterSpacing: 1.2,
                          fontSize: 16)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: qutos
                        .map((ele) => CustomCard(ele))
                        .toList(),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => {fluteNumber += 1}),
          child: Text('click'),
          backgroundColor: Colors.grey[800],
        ));
  }
}
