import 'package:flutter/material.dart';

class ItemTable extends StatelessWidget {
  const ItemTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: DataTable(
                border: TableBorder.all(
                  color: Colors.black,
                  width: 0.05,
                ),
                columnSpacing: 20,
                headingRowColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.lightBlue.shade50,
                ),
                dataRowColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.grey.shade50,
                ),
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                dataTextStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
                columns: [
                  DataColumn(
                    label: SizedBox(
                      width: constraints.maxWidth * 0.15,
                      child: const Text(
                        'Description',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: constraints.maxWidth * 0.05,
                      child: const Text(
                        'Quantité',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: constraints.maxWidth * 0.10,
                      child: const Text(
                        'Prix unitaire',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: constraints.maxWidth * 0.10,
                      child: const Text(
                        'Montant total',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: constraints.maxWidth * 0.03,
                      child: const Text(
                        'TVA',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Produit A - Une description plus longue pour tester.')),
                      DataCell(Text('10')),
                      DataCell(Text('15.00 €')),
                      DataCell(Text('150.00 €')),
                      DataCell(Text('20%')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Produit B')),
                      DataCell(Text('5')),
                      DataCell(Text('30.00 €')),
                      DataCell(Text('150.00 €')),
                      DataCell(Text('10%')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Produit C')),
                      DataCell(Text('8')),
                      DataCell(Text('12.50 €')),
                      DataCell(Text('100.00 €')),
                      DataCell(Text('5%')),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
