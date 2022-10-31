import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Button 2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('按到SnackBar!'),
                      action: SnackBarAction(
                        label: 'Toast訊息',
                        onPressed: () => Fluttertoast.showToast(
                            msg:'你按下SnackBar',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 30.0),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(
                        Colors.red),),
                  child: const Text('RaisedButton'),
                ),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue),
                      foregroundColor: MaterialStateProperty.all(
                          Colors.white),),
                    child: const Text('FlatButton')),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                          Colors.black),),
                    child: const Text('OutlineButton')),
                IconButton(
                  icon: const Icon(Icons.phone_android_outlined),
                  onPressed:  () {},
                ),
                FloatingActionButton(
                  onPressed: (){},
                  child:const Icon(Icons.phone_iphone),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.white),
                    foregroundColor: MaterialStateProperty.all(
                        Colors.red),),
                  onPressed: () {},
                  icon: Icon(Icons.phone_android),  //icon data for elevated button
                  label: Text("RaisedButton.Icon"), //label text
                ),
                /*
                ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('按到SnackBar!'),
                      action: SnackBarAction(
                        label: 'Toast訊息',
                        onPressed: () => Fluttertoast.showToast(
                            msg:'你按下SnackBar',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 30.0),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('SnackBar'),
                ),*/
              ],
            )
          ],
        )
    );
  }
}