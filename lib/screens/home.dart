import 'package:flutter/material.dart';
import 'package:invoice/screens/invoice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Générateur de facture',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InvoicePage()),
                );
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Créer une facture'),
              iconAlignment: IconAlignment.end
            ),
          ],
        ),
      ),
    );
  }
}
