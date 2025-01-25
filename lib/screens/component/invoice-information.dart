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
      firstDate: DateTime(2024),
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
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.20,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Numéro de facture :',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: 28,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 6),
                        hintStyle: const TextStyle(fontSize: 10),
                        filled: true,
                        fillColor: Colors.grey[50]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Date de facturation :',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: 28,
                  child: TextFormField(
                    controller: _invoiceDateController,
                    readOnly: true,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 6),
                        filled: true,
                        fillColor: Colors.grey[50]),
                    onTap: () => _selectDate(context, _invoiceDateController),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "A régler avant :",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: 28,
                  child: TextFormField(
                    controller: _dueDateController,
                    readOnly: true,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 6),
                      filled: true,
                      fillColor: Colors.grey[50],
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
