import 'dart:io';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// path file
// /data/data/com.pdoan.widget_demo_dynamic/app_flutter/my_file.txt

class TestUIPage extends StatefulWidget {
  const TestUIPage({Key? key}) : super(key: key);

  @override
  State<TestUIPage> createState() => _TestUIPageState();
}

class _TestUIPageState extends State<TestUIPage> {
  String? jsonString;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   _read();
    // });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Preview"),
      ),
      body: FutureBuilder<Widget?>(
        future: _buildWidget(context),
        builder: (BuildContext context, AsyncSnapshot<Widget?> snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
            return Text(snapshot.error.toString());
          }
          return snapshot.hasData
              ? Container(
            height: height,
            // color: Colors.red,
            child: snapshot.data,
          ) ?? Text('ko co data')
          // SizedBox.expand(
          //   child: snapshot.data,
          // )
              : Text("Loading...");
        },
      ),
    );
  }

  Future<Widget?> _buildWidget(BuildContext context) async {
    jsonString = await _read();
    print('jsonString: $jsonString');
    return jsonString != null ? DynamicWidgetBuilder.build(jsonString!, context, new DefaultClickListener()) : Container(
      width: 50,
        child: Center(child: CircularProgressIndicator())
    );
  }

  Future<String?> _read() async {
    String? text;
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      final File file = File('${directory.path}/my_file.txt');
      text = await file.readAsString();
    } catch (e) {
      print("Couldn't read file");
    }
    // jsonString = text;
    return text;
  }
}

class DefaultClickListener implements ClickListener{
  @override
  void onClicked(String? event) {
    print("Receive click event: " + event!);
  }

}
