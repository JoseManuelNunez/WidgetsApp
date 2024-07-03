import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('elevatorButton')),
              ElevatedButton(onPressed: null, child: Text('elevatod Disable')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: Text('Elevated Icon')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_sharp),
                label: Text('filled icon'),
              ),
              OutlinedButton(onPressed: () {}, child: Text('outline')),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_time_filled_rounded),
                label: Text('outline Icons'),
              ),

              TextButton(onPressed: (){}, child: const Text('Text buttons')),
              TextButton.icon(onPressed: (){}, icon: Icon(Icons.ac_unit_outlined), label: const Text('Text buttons icon')),
              

              IconButton(onPressed: (){}, icon: Icon(Icons.dashboard)),
             
            ],
          ),
        ),
      ),
    );
  }
}
