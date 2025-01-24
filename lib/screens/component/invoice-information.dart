import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class InvoiceInformation extends StatelessWidget {
  const InvoiceInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.22,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Numéro de facture :',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 2),
                  // Espacement horizontal entre le texte et l'input
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Renseigner le numéro de facture"),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date de la facture :',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 2),
                  // Espacement horizontal entre le texte et l'input
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                      child: DateTimeFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Selectionner la date de la facture"),
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date d'échéance :",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 2),
                  // Espacement horizontal entre le texte et l'input
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                      child: DateTimeFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Selectionner la date d'échéance"),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
