import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

//Created using command: flutter create --androidx local_auth_test_app

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Test local_auth'),
              onPressed: () async {
                var localAuth = LocalAuthentication();

                await localAuth.authenticateWithBiometrics(
                    localizedReason:
                        'Please authenticate to show account balance');
              },
            )
          ],
        ),
      ),
    );
  }
}
