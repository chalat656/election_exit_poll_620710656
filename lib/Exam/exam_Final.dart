import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_food/services/api.dart';
class Exam_Final extends StatefulWidget {
  const Exam_Final({Key? key}) : super(key: key);

  @override
  _Exam_FinalState createState() => _Exam_FinalState();
}

class _Exam_FinalState extends State<Exam_Final> {
  bool _isLooding = false;
  int number_1 = 0;
  int number_2 = 0;
  int number_3 = 0;
  int number_4 = 0;
  int number_5 = 0;

  Future<void> _number1() async {
    setState(() {
      _isLooding = true;
      number_1 += 1;
    });
    var sendData = (await Api().submit('exit_poll', {
      'id': number_1
    })) as Map<String, dynamic>;
    if (sendData['value'] == false) {
      _showMaterialDialog("SUCCESS", sendData['$number_1,$number_2, $number_3, $number_4, $number_5']);
    }
    setState(() {
      _isLooding = false;
    });

  }
  Future<void> _number2() async {
      setState(() {
        _isLooding = true;
        number_2 += 1;
      });
      var sendData = (await Api().submit('exit_poll', {
        'id': number_2
      })) as Map<String, dynamic>;
      if (sendData['value'] == false) {
        _showMaterialDialog("SUCCESS", sendData['text']);
      }
      //_showMaterialDialog("ผลการทาย", sendData['text']);
      setState(() {
        _isLooding = false;
      });

  }
  Future<void> _number3() async {
    setState(() {
      _isLooding = true;
      number_3 += 1;
    });
    var sendData = (await Api().submit('exit_poll', {
      'id': number_3
    })) as Map<String, dynamic>;
    if (sendData['value'] == false) {
      _showMaterialDialog("SUCCESS", sendData['text']);
    }
    setState(() {
      _isLooding = false;
    });

  }
  Future<void> _number4() async {
    setState(() {
      _isLooding = true;
      number_4 += 1;
    });
    var sendData = (await Api().submit('exit_poll', {
      'id': number_4
    })) as Map<String, dynamic>;
    if (sendData['value'] == false) {
      _showMaterialDialog("SUCCESS", sendData['text']);
    }
    setState(() {
      _isLooding = false;
    });

  }
  Future<void> _number5() async {
    setState(() {
      _isLooding = true;
      number_5 += 1;
    });
    var sendData = (await Api().submit('exit_poll', {
      'id': number_5
    })) as Map<String, dynamic>;
    if (sendData['value'] == false) {
      _showMaterialDialog("SUCCESS", sendData['text']);
    }
    setState(() {
      _isLooding = false;
    });

  }
  show_result(){

  }


  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: Theme.of(context).textTheme.bodyText2),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
            )
        ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset("images/vote_hand.png",width: 100.0,height: 100.0,),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text("EXIT POLL",style: TextStyle(color: Colors.white,fontSize: 20.0),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text("เลือกตั้ง อบต.",style: TextStyle(color: Colors.white,fontSize: 25.0),),
              ),
              Text("รายชื่อผู้รับสมัครเลือกตั้ง",style: TextStyle(color: Colors.white,fontSize: 15.0),),
              Text("นายกองค์การบริหารส่วนตำบลเขาพระ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
              Text("อำเภอเมืองนครนายก จังหวัดนครนายก",style: TextStyle(color: Colors.white,fontSize: 15.0),),

              OutlineButton(
                onPressed: () => _number1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,bottom: 10.0,right: 20.0,left: 20.0),
                      child: Container(
                        height: 50.0,width: 850.0,color: Colors.white54,
                        child: Row(
                            children: [
                              Container(
                                width: 50.0,height: 50.0,
                                color: Colors.green,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("1",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("นายสุรเดช สังฆธรรม",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                              ),
                            ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlineButton(
                onPressed: () => _number2,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0,right: 20.0,left: 20.0),
                      child: Container(
                        height: 50.0,width: 850.0,color: Colors.white54,
                        child: Row(
                          children: [
                            Container(
                              width: 50.0,height: 50.0,
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("2",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("นายบุญญวัตน์ หัสสากร",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlineButton(
                onPressed: () => _number3,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0,right: 20.0,left: 20.0),
                      child: Container(
                        height: 50.0,width: 850.0,color: Colors.white54,
                        child: Row(
                          children: [
                            Container(
                              width: 50.0,height: 50.0,
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("3",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("นายพงษ์สวัสดิ์ ธีระวัฒนกุล",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlineButton(
                onPressed: () => _number4,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0,right: 20.0,left: 20.0),
                      child: Container(
                        height: 50.0,width: 850.0,color: Colors.white54,
                        child: Row(
                          children: [
                            Container(
                              width: 50.0,height: 50.0,
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("นายอุชัยยา จันทร์พรหมมา",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlineButton(
                onPressed: () => _number5,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0,right: 20.0,left: 20.0),
                      child: Container(
                        height: 50.0,width: 850.0,color: Colors.white54,
                        child: Row(
                          children: [
                            Container(
                              width: 50.0,height: 50.0,
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("5",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("นายชัยพฤกษ์ รุ่งนิรันดร์",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () => show_result, child: Text("ดูผล"),
                      ),
                    ),
                  ),
                ],
              ),
              if (_isLooding)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
            ],
          ),
        ),
      );
  }
  }


