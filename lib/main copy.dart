import 'package:flutter/material.dart';
import 'package:flutter_univ/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      /*
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/next': (context) => NextPage(),
      },
      */
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
  /*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final myFocusNode = FocusNode();
  final myTextController = TextEditingController();
  */
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        actions: [Icon(Icons.add), Icon(Icons.share)],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Expanded(
              child: Image.asset('images/doku.jpg'),
            ),
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
        /*
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.asset('images/doku.jpg'),
                ),
                Text('$index'),
              ],
            );
        */
        /* return Center( child: Text(
                                        'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
            */
      ),
      /*
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
        */
      /*
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NextPage("aaaa", "bbbb", 1)),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
        */
      /*
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "名前をいれてね"),
              autofocus: true,
              controller: myTextController,
            ),
            TextField(
              decoration: InputDecoration(hintText: "趣味をいれてね"),
              focusNode: myFocusNode,
              onChanged: (value) {
                // これでフォームに変更があるたびにprintされる
                // print("object $value");
              },
            ),
            RaisedButton(
              child: Text('フォーカスするぞ！'),
              onPressed: () {
                //myFocusNode.requestFocus();
                //print(myTextController.text);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the user has entered by using the
                      // TextEditingController.
                      //content: Text(myTextController.text),
                      title: Text("これはダイアログです"),
                      content: Container(
                        width: double.maxFinite,
                        height: 200,
                        child: ListView(
                          children: [
                            Text("aaa"),
                            Text("aaa"),
                            Image.asset('images/doku.jpg'),
                          ],
                        ),
                      ),
                      actions: [
                        FlatButton(
                            child: Text("cancel"),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK")),
                      ],
                    );
                  },
                );
              },
            ),
            Text("111"),
            Image.asset('images/doku.jpg'),
            RaisedButton(
              child: Text("次へ"),
              onPressed: () {
                // ここに押したときの処理
                /*
                      Navigator.pushNamed(context, '/next');
                */
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (costext) => NextPage("１つ目の値だぞー", "２つ目の値だぞー", 2),
                  ),
                );
              },
            ),
          ],
        ),
        */
      /*
          height: double.infinity,
          color: Colors.red,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("aaaa"),
                  Text("bbbb"),
                  Text("cccc"),
                ],
              ))
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      */
    );
  }
}
