import 'dart:io';

import 'package:dynamic_widget/dynamic_widget/basic/container_widget_parser.dart';
import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:widget_demo_dynamic/test_ui.dart';

class ExportWidget extends StatefulWidget {
  const ExportWidget({Key? key}) : super(key: key);

  @override
  State<ExportWidget> createState() => _ExportWidgetState();
}

class _ExportWidgetState extends State<ExportWidget> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("export example"),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => TestUIPage()));
          },
          child: Icon(
              Icons.skip_next
          ),
        ),
      body: Builder(
        builder: (context) => Column(
          children: [
            // DynamicWidgetJsonExportor(
            //   key: key,
            //   child: ContainerCustom(
            //     padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            //     decoration: BoxDecorationCustom(
            //       color: Color(0xFF232735),
            //       borderRadius: BorderRadius.circular(20),
            //       shape: BoxShape.circle
            //     ),
            //     child: Text('abc'),
            //   ),
            // ),
            Expanded(
              child: DynamicWidgetJsonExportor(
                key: key,
                child: ContainerCustom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecorationCustom(
                    color: Color(0xFF232735),
                  ),
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.chevron_left, color: Colors.white,),
                              Text('IR Điều hoà', style: TextStyle(color: Colors.white),)
                            ],
                          )
                      ),
                      Center(
                        child: ContainerCustom(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          decoration: BoxDecorationCustom(
                              color: Color(0xFF35394D),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ContainerCustom(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.power_settings_new,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ContainerCustom(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.menu,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ContainerCustom(
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('VOL', style: TextStyle(color: Colors.white),),
                                        SizedBox(height: 20,),
                                        Icon(
                                          Icons.remove,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  ContainerCustom(
                                      width: 100,
                                      height: 100,
                                      // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      decoration: BoxDecorationCustom(
                                          color: Color(0xFF494C5E),
                                          shape: BoxShape.circle
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Center(
                                              child: ContainerCustom(
                                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                  decoration: BoxDecorationCustom(
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle
                                                  ),
                                                  child: Text('OK', style: TextStyle(color: Colors.white),)
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  ContainerCustom(
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('CH', style: TextStyle(color: Colors.white),),
                                        SizedBox(height: 20,),
                                        Icon(
                                          Icons.remove,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ContainerCustom(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.keyboard_return_rounded,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ContainerCustom(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.volume_off_outlined,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ContainerCustom(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecorationCustom(
                                        color: Color(0xFF494C5E),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.numbers,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              child: Text("Export"),
              onPressed: () {
                // _clearFile();
                var exportor = key.currentWidget as DynamicWidgetJsonExportor;
                var exportJsonString = exportor.exportJsonString();
                print(exportJsonString);
                _write(exportJsonString);
                // Scaffold.of(context).showSnackBar(SnackBar(
                //     content: Text("json string was exported to editor page.")));
                // Future.delayed(Duration(seconds: 3), (){
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               CodeEditorPage(exportJsonString)));
                // });
              },
            )
          ],
        ),
      ),
    );
  }

  _clearFile() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    // file.writeAsStringSync('');
    file.delete();
  }

  _write(String text) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    await file.writeAsString(text);
    print(join(directory.path, 'my_file.txt'));
  }
}