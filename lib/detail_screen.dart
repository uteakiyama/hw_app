import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 24,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          '詳細',
          style: TextStyle(
            locale: Locale('ja'),
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert_outlined,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              'https://images-na.ssl-images-amazon.com/images/I/71H2%2BSj3wmL._AC_SL1287_.jpg',
              width: 360,
              height: 360,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_down_alt_outlined),
                ),
                Flexible(
                  child: Text(
                    'ヴェルヴェット・アンダーグラウンド・アンド・ニコ / ベルベット・アンダーグラウンド',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      locale: Locale('ja'),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up_alt_outlined),
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 100,
              value: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('0:00'), Text('5:05')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.skip_previous_outlined,
                    size: 40,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow_outlined,
                    size: 40,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.skip_next_outlined,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
