import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('holaaaaaaaaaa'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
      final menu = appMenuItems[index];

      return _CustomListTile(menu: menu);

      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menu,
  });

  final MenuItem menu;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menu.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menu.title),
      subtitle: Text(menu.subTitle),
      onTap: () {
        context.push(menu.link);
      },
    );
  }
}