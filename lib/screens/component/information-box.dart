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
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(isRecipientBox
                    ? 'Destinataire de la facture'
                    : 'Expéditeur de facture'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: "Nom de l'entreprise"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Numéro de téléphone'),
                        keyboardType: TextInputType.phone,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Adresse'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Ville'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Code Postal'),
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Pays'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Annuler',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text('Enregistrer'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
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
                          isRecipientBox ? 'Destinataire' : 'Expéditeur',
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
      ),
    );
  }
}
