import 'package:animation_demo/animations/bookmark.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animation"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BookMark : ",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BookmarkButton()
                ],
              )
            ],
          ),
        ));
  }
}
