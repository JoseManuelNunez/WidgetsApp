import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportartion { car, plane, boat, submarin }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportartion selectedTransportation = Transportartion.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDener = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: Text('Developer Mode'),
            subtitle: Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: Text("Vehiculo de transport"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                value: Transportartion.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportartion.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                value: Transportartion.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportartion.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                value: Transportartion.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportartion.plane;
                    })),
            RadioListTile(
                title: const Text('By Submarin'),
                value: Transportartion.submarin,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportartion.submarin;
                    }))
          ],
        ),

        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          })),

        CheckboxListTile(
          title: const Text('Comida?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          })),

        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDener,
          onChanged: (value) => setState(() {
            wantsDener = !wantsDener;
          }))
      ],
    );
  }
}
