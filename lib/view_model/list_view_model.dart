import 'package:flutter/cupertino.dart';
import 'package:muslim/services/list_service.dart';
import 'package:muslim/model/ad3eya.dart';

class ListViewModel extends ChangeNotifier {
  Future<Ad3eya> fetchAd3eyaList() async {
    final result = await ListServices().fetchAd3eya();
    notifyListeners();
    return result;
  }
}
