import 'package:api_demo/post_result_model.dart';
import 'package:api_demo/user_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
@@ -10,6 +11,7 @@ class MyApp extends StatefulWidget {

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
@@ -22,23 +24,17 @@ class _MyAppState extends State<MyApp> {
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Badu", "dokter").then((value) {
                    postResult = value;
                  User.connectToAPI("5").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("POST"),
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}