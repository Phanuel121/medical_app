import 'package:flutter/material.dart';
import 'package:medical_app/service/variables.dart';

class StateManager extends ChangeNotifier {

  navigationChanger(int index){
    pageIndex = index;
    notifyListeners();
  }

}