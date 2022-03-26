import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PaguinaFavoritos extends StatefulWidget {
  @override
  _PaguinaFavoritos createState() => _PaguinaFavoritos();
}

class _PaguinaFavoritos extends State<PaguinaFavoritos> {
  String imagenPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Seleccionar Imagen'),
            (imagenPath == null) ? Container() : Image.file(File(imagenPath)),
            RaisedButton(
              child: Text('tomar foto'),
              onPressed: () async {
                final ImagePicker _picker = ImagePicker();
                PickedFile _pickedFile =
                    await _picker.getImage(source: ImageSource.gallery);
                imagenPath = _pickedFile.path;

                _pickedFile.readAsBytes().then((value) {});

                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
