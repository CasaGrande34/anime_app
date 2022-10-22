import 'package:flutter/material.dart';

class RouteState extends ChangeNotifier {
  
  static final RouteState instance = RouteState();
  
  String _path = '';
  String get path => _path;
  
  Map<String,String> _params = const {};
  Map<String, String> get params => _params;

  void setState(String newPath, [ Map <String, String>newParams = const {}]) {
    
    if (_path == newPath) return;

    _path = newPath;
    _params = newParams;
    notifyListeners();
    
  }

  
}