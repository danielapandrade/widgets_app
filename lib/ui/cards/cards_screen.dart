import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
          (card) =>
              _CardType1(elevation: card['elevation'], label: card['label']),
        ),
      ],
    );
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({required this.elevation, required this.label});

  final double elevation;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Row(
          children: [
             Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(label),
              ),
            

            Expanded(
              child: Align(
                alignment: AlignmentGeometry.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
