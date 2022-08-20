import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({
    Key? key,
    required this.elements,
  }) : super(key: key);

  final List<Map<String, dynamic>> elements;

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> with TickerProviderStateMixin {
  int _idx = 0;

  @override
  void initState() {
    super.initState();
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);*/
  }

  @override
  void dispose() {
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);*/
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_idx < widget.elements.length - 1) {
            _idx++;
          }
        });
      },
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              child: Text(
                widget.elements[_idx]['name'],
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
