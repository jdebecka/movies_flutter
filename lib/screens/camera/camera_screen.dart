import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File imageFile;
  final _picker = ImagePicker();

  Future _openGallery() async {
    final pickedPath = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      imageFile = File(pickedPath.path);
    });
    Navigator.of(context).pop();
  }

  Future _openCamera() async {
    final pickedPath = await _picker.getImage(source: ImageSource.camera);

    setState(() {
      imageFile = File(pickedPath.path);
    });
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose photo from?"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text(
                        "Gallery",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _openGallery();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text(
                        "Camera",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _openCamera();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget presentAccordingly() {
    if (imageFile == null) {
      return Text("No Image Selected");
    }
    return Image.file(imageFile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: Expanded(
                child: presentAccordingly(),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _showChoiceDialog(context);
              },
              child: Text('Select Image'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openCamera,
        child: Icon(Icons.camera),
      ),
    );
  }
}
