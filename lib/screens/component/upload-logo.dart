import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadLogo extends StatefulWidget {
  const UploadLogo({super.key});

  @override
  State<UploadLogo> createState() => _UploadLogoState();
}

class _UploadLogoState extends State<UploadLogo> {
  Uint8List? _imageBytes;
  File? _imageFile;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      if (kIsWeb) {
        final bytes = await pickedFile.readAsBytes();
        setState(() {
          _imageBytes = bytes;
        });
      } else {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: _pickImage,
        child: _imageBytes != null || _imageFile != null
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.10,
                height: 96,
                child: _imageBytes != null
                    ? Image.memory(
                        _imageBytes!,
                        fit: BoxFit.contain,
                      )
                    : Image.file(
                        _imageFile!,
                        fit: BoxFit.contain,
                      ),
              )
            : Container(
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
      ),
    );
  }
}
