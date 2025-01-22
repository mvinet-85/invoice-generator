import 'package:flutter/material.dart';

class InformationBox extends StatelessWidget {
  final bool isRecipientBox;

  const InformationBox({
    super.key,
    required this.isRecipientBox,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.22,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade300),
          borderRadius: BorderRadius.circular(8),
          color: Colors.lightBlue.shade50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue.shade700,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isRecipientBox ? 'Destinataire' : 'Envoyeur',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isRecipientBox
                            ? 'Ajouter les informations du destinataire'
                            : 'Ajouter les informations de votre entreprise',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
