import 'package:flutter/material.dart';

class InvoiceInformation extends StatefulWidget {
  const InvoiceInformation({super.key});

  @override
  State<InvoiceInformation> createState() => _InvoiceInformationState();
}

class _InvoiceInformationState extends State<InvoiceInformation> {
  final TextEditingController _invoiceDateController = TextEditingController();
  final TextEditingController _dueDateController = TextEditingController();

  @override
  void dispose() {
    _invoiceDateController.dispose();
    _dueDateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        String formattedDate = "${selectedDate.day.toString().padLeft(2, '0')}/"
            "${selectedDate.month.toString().padLeft(2, '0')}/"
            "${selectedDate.year}";
        controller.text = formattedDate;
      });
    }
  }

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
                const Text(
                  'Numéro de facture :',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 12),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Date de la facture :',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                  child: TextFormField(
                    controller: _invoiceDateController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: null,
                    ),
                    onTap: () => _selectDate(context, _invoiceDateController),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Date d'échéance :",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                  child: TextFormField(
                    controller: _dueDateController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: null,
                    ),
                    onTap: () => _selectDate(context, _dueDateController),
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
