import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ild/widgets/custome_button.dart';
import 'package:image_picker/image_picker.dart';

class ILDScreen extends StatefulWidget {
  const ILDScreen({super.key});

  @override
  State<ILDScreen> createState() => _ILDScreenState();
}

class _ILDScreenState extends State<ILDScreen> {
  File? _image;

  Future getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ILD Screen'),
        backgroundColor: const Color.fromARGB(255, 39, 23, 159),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _image != null
                  ? Image.file(
                      _image!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      'http://m.gettywallpapers.com/wp-content/uploads/2021/08/Naruto-Wallpaper-4k-1024x576.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
              const SizedBox(height: 10),
              CustomButton(
                  textValue: 'Take picture from Gallery',
                  onClick: () {
                    getImageFromGallery();
                  }),
              // CustomButton(
              //     textValue: 'Take picture from Camera', onClick: () {})
            ],
          ),
        ),
      ),
    );
  }
}
