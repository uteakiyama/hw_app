import 'package:flutter/material.dart';

class AllContentScreen extends StatelessWidget {
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
          'すべて表示',
          style: TextStyle(
            locale: Locale('ja'),
            color: Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Text('すべてのミュージックがでますのや'),
      ),
    );
  }
}
