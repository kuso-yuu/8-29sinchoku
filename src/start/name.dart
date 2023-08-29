import 'package:flutter/material.dart';
import 'about.dart';

/*
名前ーーーーーーname
生年月日ーーーーbrth
出身ーーーーーーfrom
所属ーーーーーーsyoz
趣味ーーーーーーhoby
休日の過ごし方ーholi
最近の楽しみーーfunt
将来的な願望ーーhope
*/

//スクリーン１------------------------------------------------------------------------------------------------------------
// ignore: must_be_immutable
class NameScreen extends StatefulWidget {
  String name1 = '';
  String brth1 = '';
  String from1 = '';
  String syoz1 = '';
  String hoby1 = '';
  String holi1 = '';
  String funt1 = '';
  String hope1 = '';
  NameScreen({required this.name1});
  @override
  State<NameScreen> createState() => _NameScreen();
}

class _NameScreen extends State<NameScreen> {
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
                height: 150,
              ),
              Center(
                child: Text(
                  "ようこそ。",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "あなたの名前を教えてください。",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: TextEditingController(text: widget.name1),
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {
                            widget.name1 = text;
                          },
                          maxLines: 1,
                          maxLength: 50,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            icon: Icon(Icons.perm_identity,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください。',
                          ),
                        ),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutScreen(
                                    name2: widget.name1,
                                    brth2: widget.brth1,
                                    from2: widget.from1,
                                    syoz2: widget.syoz1,
                                    hoby2: widget.hoby1,
                                    holi2: widget.holi1,
                                    funt2: widget.funt1,
                                    hope2: widget.hope1,
                                  ),
                                ),
                              );
                            },
                            child:
                                widget.name1.isEmpty ? Text('次へ') : Text('次へ')),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
