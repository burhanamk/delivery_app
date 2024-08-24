

import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child:
        Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                )
            ),
            child:  Center(
              child:Image.network("https://www.vwthemes.com/cdn/shop/files/final-logo.png?v=1716266206&width=270",height: 100,width: 160,)
            ),
          ),
        ),
        // Container(
        //   color: Colors.white,
        //   child:
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textWidget(text:
              'This is Home Screen',
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),

          ],
        ),
      ),

    );
  }
}
