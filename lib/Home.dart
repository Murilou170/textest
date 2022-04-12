import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: const Text('Aplicativo de fontes'),
             centerTitle: true,
           ),
      body: Row(
        children: [
          const Text(
            'Teste',
            style: TextStyle(fontSize: 30.0,
            //fontFamily:
            ),
          ),
          SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText('...', speed: const Duration(milliseconds: 700)),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
