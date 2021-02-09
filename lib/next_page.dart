import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String firstMessage;
  final String secondMessage;
  final int thirdMessage;
  NextPage(this.firstMessage, this.secondMessage, this.thirdMessage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画面です"),
      ),
      body: Container(
          height: double.infinity,
          color: Colors.red,
          child: Column(
            children: [
              (thirdMessage == 1)
                  ? Text(firstMessage)
                  : Text(
                      secondMessage,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                      ),
                    ),
              Center(
                child: RaisedButton(
                  child: Text("戻る"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          )),
    );
  }
}
