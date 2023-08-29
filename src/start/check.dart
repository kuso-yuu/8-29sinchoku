import 'package:flutter/material.dart';
import 'about.dart';
import '/src/app.dart';

//スクリーン３------------------------------------------------------------------------------------------------------------
class CheckScreen extends StatefulWidget {
  final String name3;
  final String brth3;
  final String from3;
  final String syoz3;
  final String hoby3;
  final String holi3;
  final String funt3;
  final String hope3;
  CheckScreen(
      {required this.name3,
      required this.brth3,
      required this.from3,
      required this.syoz3,
      required this.hoby3,
      required this.holi3,
      required this.funt3,
      required this.hope3});

  @override
  State<CheckScreen> createState() => _CheckScreen();
}

class _CheckScreen extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 49, 142, 255)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      "名刺が完成しました。",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "内容は後から変更できます。",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('名前：${widget.name3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('生年月日：${widget.brth3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('出身：${widget.from3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('所属：${widget.syoz3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('趣味：${widget.hoby3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('休日の過ごし方：${widget.holi3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('最近の楽しみ：${widget.funt3}',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('将来的な願望：${widget.hope3}',
                          style: TextStyle(fontSize: 20)),
                    )
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutScreen(
                                        name2: widget.name3,
                                        brth2: widget.brth3,
                                        from2: widget.from3,
                                        syoz2: widget.syoz3,
                                        hoby2: widget.hoby3,
                                        holi2: widget.holi3,
                                        funt2: widget.funt3,
                                        hope2: widget.hope3,
                                      )),
                            );
                          },
                          child: Text('戻る')),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            print(widget.name3);
                            print(widget.brth3);
                            print(widget.from3);
                            print(widget.syoz3);
                            print(widget.hoby3);
                            print(widget.holi3);
                            print(widget.funt3);
                            print(widget.hope3);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  name: widget.name3,
                                  brth: widget.brth3,
                                  from: widget.from3,
                                  syoz: widget.syoz3,
                                  hoby: widget.hoby3,
                                  holi: widget.holi3,
                                  funt: widget.funt3,
                                  hope: widget.hope3,
                                ),
                              ),
                            );
                          },
                          child: Text('次へ')),
                    )
                  ])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
