


import 'package:flutter/cupertino.dart';

class ImageProviderModel extends ChangeNotifier {
  String? imageData;

  void setImageData(String data) {
    imageData = data;
    notifyListeners();
  }
}