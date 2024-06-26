import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TopPanelProf extends StatefulWidget {
  const TopPanelProf({super.key});

  @override
  State<TopPanelProf> createState() => _TopPanelProfState();
}

class _TopPanelProfState extends State<TopPanelProf> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Stack(
            children: [
              _image != null ?
              CircleAvatar(
                radius: 50,
                backgroundImage: MemoryImage(_image!),
              ) :  const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
              ),
              Positioned(
                bottom: -14,
                left: 60,
                child: IconButton(onPressed: () {
                  showImagePikcherOption(context);
                }, icon: Icon(Icons.add_a_photo), color: Colors.white,),
              ),
            ],
          ),
          SizedBox(width: 10,),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('Олег Пак', style: TextStyle(color: Colors.white, fontSize: 25),),
          ),
        ],
      ),
    );
  }

  void showImagePikcherOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.grey,
      context: context,
      builder: (builder){
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width/4,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 70,), Text('Галерея'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      _pickImageFromGamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.camera_alt, size: 70,), Text('Камера'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future _pickImageFromGallery() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if(returnImage == null) return;
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future _pickImageFromGamera() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if(returnImage == null) return;
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}