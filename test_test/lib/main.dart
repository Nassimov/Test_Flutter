import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Nouveau Titre',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Pacifico'
      ),
      home: MyHomePage(title: 'Mon nouveau Titre de Flutter'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
        centerTitle:true,
        backgroundColor:Colors.orangeAccent,
      ),
      body: Column(
            children:<Widget>[
          // la notion de Expended    
          Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:Image(image: AssetImage("assets/messi.jpg")) 
            ),
            Expanded(
              flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.blue,
                child: Text("1"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.orange,
                child: Text("2"),
              ),
            ),
            Expanded(
              flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.green,
                child: Text("3"),
              ),
            ),
          ],
        ),
Text("Nassim")

            ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'cliquer pour incrémenter',
        child: Icon(Icons.add),
        hoverColor:Colors.red,

      ),
    );
  }
}
