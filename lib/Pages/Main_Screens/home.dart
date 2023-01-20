import 'package:biscuit2/temp/Post2.dart';
import 'package:biscuit2/temp/post1.dart';
import 'package:biscuit2/temp/post3.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
