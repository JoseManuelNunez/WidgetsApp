import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'KO!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'El Lore o trasfondo de un juego, es el conjunto de historias, datos, personajes, etc. que conforman el universo representado en el mismo y le dan coherencia. Se podria decir de manera mas simple la realidad de los personajes del juego. El Lore no es nada nuevo.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'El Lore o trasfondo de un juego, es el conjunto de historias, datos, personajes, etc. que conforman el universo representado en el mismo y le dan coherencia. Se podria decir de manera mas simple la realidad de los personajes del juego. El Lore no es nada nuevo.')
                  ]);
                },
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          icon: const Icon(Icons.remove_red_eye_outlined),
          label: const Text('Mostrar Snackbar')),
    );
  }
}
