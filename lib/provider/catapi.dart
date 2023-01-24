import 'package:flutter/cupertino.dart';
import '../Model/cate.dart';

class ApiCat extends ChangeNotifier {
  List<Categorie> catlist = [];

  void getcat(List data) {
    if (data.isEmpty) {
      return;
    }
    try {
      for (int i = 0; i < data.length; i++) {
        catlist.add(Categorie.fromJson(data[i]));
        print('Adding Categorie Number: $i');
      }
      notifyListeners();
    } catch (e) {
      print('error message $e');
    }
  }
}
