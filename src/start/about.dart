import 'package:flutter/material.dart';
import 'check.dart';
import 'name.dart';

//スクリーン２------------------------------------------------------------------------------------------------------------
// ignore: must_be_immutable
class AboutScreen extends StatefulWidget {
  final String name2;
  String brth2 = '';
  String from2 = '';
  String syoz2 = '';
  String hoby2 = '';
  String holi2 = '';
  String funt2 = '';
  String hope2 = '';
  AboutScreen(
      {required this.name2,
      required this.brth2,
      required this.from2,
      required this.syoz2,
      required this.hoby2,
      required this.holi2,
      required this.funt2,
      required this.hope2});
  @override
  State<AboutScreen> createState() => _AboutScreen();
}

class _AboutScreen extends State<AboutScreen> {
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
        onTap: focusNode.requestFocus,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 400,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 49, 142, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "もっとあなたのことを教えてください。",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.brth2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.brth2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_month,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '生年月日',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.brth2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.from2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.home,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '出身',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.syoz2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.syoz2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.perm_identity,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '所属',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.hoby2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.hoby2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.favorite,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '趣味',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.holi2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.holi2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.event,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '休日の過ごし方',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.funt2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.funt2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.hotel_class_sharp,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '最近の楽しみ',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: widget.hope2),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          widget.hope2 = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.tour_rounded,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '将来的な願望',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NameScreen(name1: widget.name2)),
                              );
                            },
                            child: Text('戻る')),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckScreen(
                                          name3: widget.name2,
                                          brth3: widget.brth2,
                                          from3: widget.from2,
                                          syoz3: widget.syoz2,
                                          hoby3: widget.hoby2,
                                          holi3: widget.holi2,
                                          funt3: widget.funt2,
                                          hope3: widget.hope2,
                                        )),
                              );
                            },
                            child: Text('次へ')),
                      )
                    ])
                  ]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
