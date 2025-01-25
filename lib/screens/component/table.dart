import 'package:flutter/material.dart';

class ItemTable extends StatelessWidget {
  const ItemTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(
            color: Colors.transparent,
            width: 0.5,
          ),
          columnSpacing: 20,
          headingRowColor: WidgetStateProperty.resolveWith(
            (states) => Colors.lightBlue.shade50,
          ),
          dataRowColor: WidgetStateProperty.resolveWith(
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
                width: MediaQuery.of(context).size.width * 0.26,
                child: const Text(
                  'Description',
                ),
              ),
            ),
            const DataColumn(
              label: Text(
                'Quantité',
              ),
            ),
            const DataColumn(
              label: Text(
                'Prix unitaire',
              ),
            ),
            const DataColumn(
              label: Text(
                'Montant total',
              ),
            ),
            const DataColumn(
              label: Text(
                'TVA',
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Produit A')),
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
  }
}
