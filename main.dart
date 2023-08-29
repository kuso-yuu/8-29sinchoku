import 'package:flutter/material.dart';
import 'package:FaciliTalk/src/appstart.dart';
import 'src/app.dart';

bool startFlag = false;

void main() {
  //スタート画面かホーム画面か
  startFlag = false;
  if (startFlag == false) {
    runApp(MyAppStart()); //false==start
  } else {
    runApp(MyApp()); //true==home
  }
}

//参考
//ナビゲーションバー
//https://dev.classmethod.jp/articles/flutter-bottom-navigation/
// flutter の基本
//https://zenn.dev/kazutxt/books/flutter_practice_introduction/viewer/

