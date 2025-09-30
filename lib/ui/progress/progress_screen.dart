import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Indicator')),
      body: SizedBox(
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              Text('Circular Progress Indicator'),
              CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.amberAccent,
              ),
              Text('Circular Indicator'),
              _ControlledProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300), (value) {
        return (value) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progress = snapshot.data ?? 0;
        return Padding(
          padding: EdgeInsetsGeometry.fromLTRB(30, 0, 30, 0),
          child: Row(
            spacing: 10,
            children: [
              CircularProgressIndicator(
                value: progress,
                strokeWidth: 2,
                backgroundColor: Colors.red,
              ),
              Expanded(child: LinearProgressIndicator(value: progress,)),
            ],
          ),
        );
      },
    );
  }
}
