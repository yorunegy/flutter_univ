import 'package:flutter/material.dart';
import 'package:flutter_univ/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(1000, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Youtube的アプリ',
      home: Scaffold(
          appBar: AppBar(
            leading: Image.asset('images/youtube_social_square_white.png'),
            title: const Text('Youtube風アプリ'),
            actions: [
              SizedBox(
                width: 44,
                child: FlatButton(
                    onPressed: () {
                      // todo
                    },
                    child: const Icon(Icons.search)),
              ),
              SizedBox(
                  width: 44,
                  child: FlatButton(
                      onPressed: () {
                        // todo
                      },
                      child: const Icon(Icons.more_vert)))
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 60,
                      child: Image.asset(
                        'images/ueno.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '上野チャンネル',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                ),
                                const Text('登録する'),
                                Text('チャンネル登録者数 9999人'),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: Image.asset(('images/test.png')),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Youtubeっぽいもの',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Text(
                                      '9999回再生',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Text(
                                      '99日前',
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                )
                              ],
                            ),
                            trailing: Icon(Icons.more_vert),
                          );
                        }))
              ],
            ),
          )),
    );
  }
}
