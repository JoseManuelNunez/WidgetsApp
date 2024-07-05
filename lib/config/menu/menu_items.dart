import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: "Varios botones en flutter",
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: "Un contenedor estilizado",
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progres Indicators',
      subTitle: "Generales y controlados",
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: "Indicadores en pantalla",
      link: '/snackbars',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Animated container',
      subTitle: "Statefull widget animado",
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls',
      subTitle: "una serie de controles en flutter",
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Tutorial',
      subTitle: "introduccion a la app",
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: "introduccion a la app",
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Counter Screen',
      subTitle: "pantalla para contar",
      link: '/counter_screen',
      icon: Icons.plus_one_outlined),
  MenuItem(
      title: 'Cambiar Tema',
      subTitle: "pantalla para contar el tema",
      link: '/theme_changer',
      icon: Icons.color_lens_outlined),
];
