import 'package:flutter/material.dart';
import 'package:flutter_app/all_content_screen.dart';
import 'package:flutter_app/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigation', home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '今すぐ聴く',
          style: TextStyle(
            locale: Locale('ja'),
            color: Colors.black54,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '最新のエピソード',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 20),
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AllContentScreen();
                    },
                  ),
                ),
                child: const Text(
                  'すべて表示',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: const Color(0xFF6200EE),
              ),
            ],
          ),
          Container(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return DetailScreen();
                    });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/71H2%2BSj3wmL._AC_SL1287_.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '今日',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              locale: Locale('ja'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('へい！アーティスト名を押すと遷移するぜ');
                            },
                            child: Text(
                              'ヴェルヴェット・アンダーグラウンド・アンド・ニコ / ベルベット・アンダーグラウンド ',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 16.0, right: 0.0, bottom: 0.0),
                            child: Text(
                              '詳細',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF6200EE),
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return DetailScreen();
                    });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/51WaDzpqHoL._AC_.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '昨日',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              locale: Locale('ja'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('へい！アーティスト名を押すと遷移するぜ');
                            },
                            child: Text(
                              'ニルヴァーナ / ネヴァーマインド',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 16.0, right: 0.0, bottom: 0.0),
                            child: Text(
                              '詳細',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF6200EE),
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '最近再生した項目',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 20),
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AllContentScreen();
                    },
                  ),
                ),
                child: const Text(
                  'すべて表示',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: const Color(0xFF6200EE),
              ),
            ],
          ),
          Container(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return DetailScreen();
                    });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/71Dk9bbPAnL._AC_SL1000_.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10月31日',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              locale: Locale('ja'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('へい！アーティスト名を押すと遷移するぜ');
                            },
                            child: Text(
                              'ビートルズ / アビィ・ロード',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 16.0, right: 0.0, bottom: 0.0),
                            child: Text(
                              '詳細',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF6200EE),
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return DetailScreen();
                    });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/81y64HG6ekL._AC_SL1200_.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '昨日',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              locale: Locale('ja'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('へい！アーティスト名を押すと遷移するぜ');
                            },
                            child: Text(
                              'ピンク・フロイド / 原子心母',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 16.0, right: 0.0, bottom: 0.0),
                            child: Text(
                              '詳細',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF6200EE),
                                locale: Locale('ja'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
