import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(primaryColor: Colors.amber),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(widget.title),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyProfileItem(
              icon: Icons.icecream,
              message: 'Ice cream is very delicious right?',
            ),
            MyProfileItem(
              icon: Icons.code,
              message: 'Programming is not boring if you love it',
            ),
            MyProfileItem(
              icon: Icons.egg,
              message:
                  'If you submit code directly copy from chatgpt then mark will 0',
            ),
          ],
        ));
  }
}

class MyProfileItem extends StatelessWidget {
  final IconData icon;
  final String message;

  const MyProfileItem({super.key, required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 56,
            backgroundColor: Colors.purple[190],
            child: Icon(
              icon,
              color: Colors.purple[900],
              size: 72,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
