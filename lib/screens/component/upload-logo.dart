import 'package:flutter/material.dart';

class UploadLogo extends StatelessWidget {
  const UploadLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.10,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade300),
          borderRadius: BorderRadius.circular(8),
          color: Colors.lightBlue.shade50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.upload_file,
              size: 35,
              color: Colors.blue.shade700,
            ),
            const SizedBox(height: 10),
            const Text(
              'Ajouter un Logo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
