import 'package:flutter/material.dart';
import 'package:project_code/ui/screens/home.dart';

class HomeProvider extends ChangeNotifier {
  HomeScreenStatus _status = HomeScreenStatus.HOME;
  HomeScreenStatus get status => _status;

  set status(HomeScreenStatus status) {
    _status = status;
    notifyListeners();
  }
}
