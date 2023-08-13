import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key, required this.onPickImage}) : super(key: key);

  final void Function(File pickedImage) onPickImage;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {

  File? _pickedImageFile;
  void _pickImage() async{
    final pickedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxWidth: 150
    );

    if(pickedImage == null){
      return ;
    }

    setState(() {
      _pickedImageFile = File(pickedImage.path);
    });

    widget.onPickImage(_pickedImageFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _pickImage,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey.shade200,
            foregroundImage: _pickedImageFile != null ? FileImage(_pickedImageFile!) : null,
            child: Icon(Icons.camera,color: Colors.grey,size: 32,),
          ),
        ),
      ],
    );
  }
}

