import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final int clickCounter = ref.watch(counterProvider);
    bool isLightMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
          onPressed: () {
            isLightMode = !isLightMode;
            ref.read( themeProvider.notifier ).state = isLightMode;
          },
          icon: Icon( isLightMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined ))
        ],
      ),
      body: Center(child: Text('Valor: ${clickCounter}', style: Theme.of(context).textTheme.titleLarge,),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read( counterProvider.notifier ).state++;
        },
        child: Icon(Icons.plus_one),
        ),
    );

  }
}