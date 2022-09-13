import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(
                decoration: InputDecoration(
                    hintText: "Message",
                    hintStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.camera_alt),
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                textAlign: TextAlign.start),
          ],
        ),
      )),
    );
  }
}
