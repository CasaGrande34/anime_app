
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ClanProvider extends ChangeNotifier {
  
  final String _urlBase = 'naruto-details.herokuapp.com';
  
  ClanProvider() {
    
    getServices();
  
  }
  
  getServices() async { 
    
    final url = Uri.https(_urlBase, '/clan', {'name' : 'uchiha'});
    final response = await http.get(url);
    print(response);
  }
  
  
}