import 'package:flutter/material.dart';

class UploadLogo extends StatelessWidget {
  const UploadLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 130,
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
                  size: 40,
                  color: Colors.blue.shade700,
                ),
                SizedBox(height: 10),
                const Text(
                  'Ajouter un Logo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
