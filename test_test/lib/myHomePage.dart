import 'package:flutter/material.dart';
import 'firstFull.dart';
import 'passwordWidget.dart';
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
      //Scroll object ---
      /* 
      child: new CustomScrollView(
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      */
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Pading=Container - color - marging
              Padding(
                padding:EdgeInsets.only(
                  left: 100.0
                ),
                child: Text("Pading Container"), 
              ),
              //Container 
              Container(
                child: Text(("Je suis dans le container")),
                padding:EdgeInsets.symmetric( // Plus les autres choix : all , zero , ltrb ...
                  vertical: 10.0,
                  horizontal: 15.0
                ),
                width: 100.0,
                height: 150.0,
                color: Colors.red,
              ),
              Divider(
                height: 30.0,
                thickness: 10.0,
              ),
              // Icon cliquable
              IconButton(
                icon: Icon(Icons.ac_unit) , 
                onPressed: (){print("OK");}
                ),
              // FlatButton & Raised Button ont l'option X.icon
              RaisedButton.icon(
                onPressed: (){}, 
                icon: Icon(
                  Icons.assignment_late
                ), 
                label: Text("Le label ici")
                ),
              FlatButton(
                onPressed: (){},
                child: Text("Flatten Button sans icon"),
                textColor: Colors.lightBlueAccent,
                color: Colors.brown,
                ),
              RaisedButton(
                onPressed: (){},
                color: Colors.red,
                child: Text("RAISED BUTTON"),
                ),
              // les icons
              Icon(
                Icons.battery_unknown,
                size: 40.0,
                color: Colors.blue,
                semanticLabel: 'Un label Sémantique',
                //textDirection: TextDirection.rtl, l'entre sense
                ),
              // Afficher une image a partir d'une URL
              Image(
                image:NetworkImage('https://www.fcbarcelona.com/photo-resources/2019/09/26/43931b52-6dcb-4f1e-8fba-81e5b688f11a/10_MESSI_JUGADORS-WEB.jpg?width=1200&height=750'),
                height: 40.0,
               ),
               // Afficher une Image a partir d'un fichier image
               // on peut utiliser : Image.network , Image.asset
               SizedBox(
                 height: 20.0,
               ),
               Image(
                 image: AssetImage('assets/messi.jpg'),
                 height: 22.0,
                 
                 ),
                 CircleAvatar(
                   backgroundImage: AssetImage("assets/messi.jpg"),
                   radius: 50.0,

                 ),
              Text(
                'Text Style',
                style:TextStyle(
                  color:Colors.green,
                  backgroundColor:Colors.yellow,
                  fontSize:40.0,
                  //fontWeight: FontWeight.bold,
                  letterSpacing: 20.0,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Salut'
              ),
              // Rowes:
              Row(
                // Alignement Main & Cross
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 30.0,
                      child: Text("First"),
                      height: 30.0,
                      color: Colors.green,
                      )
                    ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 30.0,
                      child: Text("seconde"),
                      height: 30.0,
                      color: Colors.blueGrey,
                      )
                    ),
                ],
              ),
              MyFirstStFull(),
              Passwords(),
            ],
          ),
        ),
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