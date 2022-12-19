import 'package:flutter/material.dart';

class RemotePage extends StatefulWidget {
  const RemotePage({Key? key}) : super(key: key);

  @override
  State<RemotePage> createState() => _RemotePageState();
}

class _RemotePageState extends State<RemotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
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
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF35394D),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.red,
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
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
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
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
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
                        Container(
                            width: 100,
                            height: 100,
                            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color(0xFF494C5E),
                                shape: BoxShape.circle
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Center(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                        decoration: BoxDecoration(
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
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
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
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
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
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
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
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
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
      )
    );
  }
}
