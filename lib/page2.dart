import 'package:flutter/material.dart';

import 'home.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Page 2"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            const Text("Page 2"),
            ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const MyHomePage(title: "First Page")),
                );
              },
            ),

          ],


        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
