import 'package:flutter/material.dart';
import 'package:widgets_app/domain/models/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final list = appMenuItens;

    return ListView.builder(
      itemCount: appMenuItens.length,
      itemBuilder: (context, index) {
        return OutlinedButton(
          onPressed: () {},

          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 0, color: Colors.white),
            shape: ContinuousRectangleBorder(),
          ),
          child: ListTile(
            title: Text(list[index].title),
            leading: Icon(list[index].icon),
          ),
        );
      },
    );
  }
}
