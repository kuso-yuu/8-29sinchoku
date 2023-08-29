import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FaciliTalk',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(
          name: '',
          brth: '',
          from: '',
          syoz: '',
          hoby: '',
          holi: '',
          funt: '',
          hope: '',
        ));
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String name = '';
  String brth = '';
  String from = '';
  String syoz = '';
  String hoby = '';
  String holi = '';
  String funt = '';
  String hope = '';
  HomeScreen({
    required this.name,
    required this.brth,
    required this.from,
    required this.syoz,
    required this.hoby,
    required this.holi,
    required this.funt,
    required this.hope,
  });
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<Widget> _screens = [
    MeishiScreen(
      name4: '',
      brth4: '',
      from4: '',
      syoz4: '',
      hoby4: '',
      holi4: '',
      funt4: '',
      hope4: '',
    ),
    TourokuScreen(),
    MeishiireScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.picture_in_picture), label: '名刺'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '登録'),
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: '名刺入れ'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}

//名刺画面ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
//ignore: must_be_immutable
class MeishiScreen extends StatelessWidget {
  String name4 = '';
  String brth4 = '';
  String from4 = '';
  String syoz4 = '';
  String hoby4 = '';
  String holi4 = '';
  String funt4 = '';
  String hope4 = '';
  MeishiScreen({
    required this.name4,
    required this.brth4,
    required this.from4,
    required this.syoz4,
    required this.hoby4,
    required this.holi4,
    required this.funt4,
    required this.hope4,
  });
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
            Text(
              'あなたの名刺です。',
              style: TextStyle(fontSize: 28),
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('名前：$name4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('生年月日：$brth4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('出身：$from4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('所属：$syoz4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('趣味：$hoby4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:
                        Text('休日の過ごし方：$holi4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:
                        Text('最近の楽しみ：$funt4', style: TextStyle(fontSize: 20)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:
                        Text('将来的な願望：$hope4', style: TextStyle(fontSize: 20)),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//登録画面ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
class TourokuScreen extends StatelessWidget {
  const TourokuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登録'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('登録画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}

//名刺入れ画面ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
class MeishiireScreen extends StatelessWidget {
  const MeishiireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('名刺入れ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('名刺入れ画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
