import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});
  void showSnackBar(context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snack = SnackBar(
      content: Text('data'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,

      context: context,
      builder: (context) => AlertDialog(
        title: const Text('data'),
        content: Text('data'),
        actions: [
          TextButton(onPressed: () {
            context.pop();
          }, child: Text('Cancelar')),
          FilledButton(onPressed: (){}, child: Text('Aceitar'))
          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snack Bar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [Center(child: Text('data'))],
                );
              },
              child: Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackBar(context),
        icon: Icon(Icons.remove_red_eye),
        label: Text('show snack bar'),
      ),
    );
  }
}
