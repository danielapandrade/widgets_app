import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
}

const appMenuItens = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subtitle: 'so many buttons',
    link: '/buttons',
    icon: Icons.smart_button,
  ),
  MenuItem(
    title: 'cards',
    subtitle: 'some cards',
    link: '/cards',
    icon: Icons.credit_card
  ),
   MenuItem(
    title: 'Progress Indicators',
    subtitle: 'some progress bar',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
   MenuItem(
    title: 'Snack Bar',
    subtitle: 'some snack bar',
    link: '/snackbars',
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Stateful Widget Animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_sharp
  ),
  
];
