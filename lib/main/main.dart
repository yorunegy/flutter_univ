import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_univ/fbexample.dart';
import 'package:flutter_univ/book_list/book_list_page.dart';
import 'package:flutter_univ/book_list/book_list_model.dart';
import 'package:flutter_univ/next_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_univ/get_user_name.dart';
import 'package:flutter_univ/fbexample.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Provider練習',
      home: ChangeNotifierProvider<BookListModel>(
        create: (_) {
          return BookListModel();
        },
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Providerパターン'),
            ),
            body: Consumer<BookListModel>(builder: (context, model, child) {
              return Center(
                child: Column(children: [
                  Text(
                    "ボタン",
                    style: TextStyle(fontSize: 20),
                  ),
                  RaisedButton(
                      child: Text('button'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          //MaterialPageRoute(builder: (context) => FBexample()),
                          MaterialPageRoute(
                              builder: (context) => BookListPage()),
                        );
                      })
                ]),
              );
            })),
      ),
    );
  }
}
