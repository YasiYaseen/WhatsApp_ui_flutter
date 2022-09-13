import 'package:flutter/material.dart';
import 'package:flutter_app/screen_2.dart';

void main(List<String> args) {
  runApp(myaapp());
}

class myaapp extends StatelessWidget {
  const myaapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Listvieww(),
    );
  }
}

class Listvieww extends StatelessWidget {
  const Listvieww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return ScreenTwo(name: 'person ${index + 1}');
              }));
            },
            title: Text('person ${index + 1}'),
            subtitle: Text('hi yaseen'),
            leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage('assets/images/no-profile-picture-icon-15.jpg')),
            trailing: Text('1$index:00 am'),
          );
        }),
        separatorBuilder: ((context, index) {
          return Divider(
            thickness: 2,
          );
        }),
        itemCount: 26,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          print('hi');
        },
      ),
    );
  }
}
