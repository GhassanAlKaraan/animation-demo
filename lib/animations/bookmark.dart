import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> with SingleTickerProviderStateMixin{


  //controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (bookmarked == false) {
          _controller.forward();
          bookmarked = true;
        } else {
          _controller.reverse();
          bookmarked = false;
        }
      },
      child: SizedBox(
        height: 70,
        width: 70,
        child: Lottie.network(
          'https://lottie.host/639acdf1-3575-46f5-b84b-48e982df645f/o2WrM7ym64.json',
          controller: _controller,
          fit: BoxFit.fill,),
      ),
    );
  }
}
