// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Image(
                image: AssetImage('image/chef.gif'),
                width: 170.0,
                height: 190.0,
              ),
            ),
            Form(
                child: Theme(
                    data: ThemeData(
                        primaryColor: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle:
                                TextStyle(color: Colors.teal, fontSize: 15.0))),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Enter "dice"'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Enter Password'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 35)),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.orangeAccent),
                            ),
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 35.0,
                              ),
                            ),
                          ),

                          // ButtonTheme(
                          //     minWidth: 100.0,
                          //     height: 50.0,
                          //     child:
                          //     // TextButton(
                          //     //   child: Icon(
                          //     //     Icons.arrow_forward,
                          //     //     color: Colors.grey,
                          //     //   ),
                          //     //   onPressed: () {},
                          //     //   style: TextButton.styleFrom(
                          //     //       primary: Colors.orangeAccent),
                          //     // )
                          //     // ElevatedButton.icon(
                          //     //   style: ElevatedButton.styleFrom(
                          //     //       primary: Colors.orangeAccent,
                          //     //       minimumSize: Size(100, 35.0)),
                          //     //   icon: Icon(Icons.arrow_forward),
                          //     //   label: Text(''),
                          //     //   onPressed: () {},
                          //     // )
                          //     ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
