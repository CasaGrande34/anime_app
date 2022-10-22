import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  
  ThemeData _currentTheme = ThemeData.light();
  ThemeData get currentTheme => _currentTheme;
  
  //DarkTheme
  bool _themeDark   = false;
  bool get themeDark   => _themeDark;
  set themeDark( bool value ) {
    
    _themeCustom = false;
    _themeDark   = value;
    _currentTheme = ThemeData.dark();
    notifyListeners();
    
  }
  
  //CustomTheme
  bool _themeCustom = false;
  bool get themeCustom => _themeCustom;
  set themeCustom( bool value ) {
    
    _themeCustom = value;
    _themeDark   = false;
    _currentTheme = ThemeData.dark();
    notifyListeners();
    
  }
  
  
  ThemeData customLightTheme() {
 
 
   _currentTheme = ThemeData.light();

   return _currentTheme.copyWith(

     textTheme: _customLightThemesTextTheme(_currentTheme.textTheme),
     primaryColor: const Color(0xffce107c),
     indicatorColor: const Color(0xFF807A6B),
     scaffoldBackgroundColor: const Color(0xFFF5F5F5),
     primaryIconTheme: _currentTheme.primaryIconTheme.copyWith(
     color: Colors.white,
     size: 20,
    ),
    
     iconTheme: _currentTheme.iconTheme.copyWith(
     color: Colors.white,
    ),
    
     backgroundColor: Colors.white,
     tabBarTheme: _currentTheme.tabBarTheme.copyWith(
     labelColor: const Color(0xffce107c),
     unselectedLabelColor: Colors.grey,
    ),
    
     buttonTheme: _currentTheme.buttonTheme.copyWith(buttonColor: Colors.red),
     errorColor: Colors.red,
     
  );

 }

  ThemeData customDarkTheme() {

   _currentTheme = ThemeData.dark();

   return _currentTheme.copyWith(

  	 primaryColor: Colors.black38,
     textTheme: _currentTheme.textTheme,
  	 indicatorColor: const Color(0xFF807A6B),
  	 primaryIconTheme: _currentTheme.primaryIconTheme.copyWith(
  	 color: Colors.green,
  	 size: 20,
  	),
    
  );

  }
 
  TextTheme _customLightThemesTextTheme(TextTheme base) {

     return base.copyWith(
  
     headline1: base.headline1?.copyWith(
      
       fontFamily: 'Roboto',
       fontSize: 22.0,
       color: Colors.green,
    ),
    
     headline6: base.headline6?.copyWith(
      
       fontSize: 15.0,
       color: Colors.orange
    ),
    
     headline4: base.headline1?.copyWith(
      
       fontSize: 24.0,
       color: Colors.white,
    ),
    
     headline3: base.headline1?.copyWith(
      
       fontSize: 22.0,
       color: Colors.grey,
    ),
     caption: base.caption?.copyWith(
      
       color: const Color(0xFFCCC5AF),
    ),
    
     bodyText2: base.bodyText2?.copyWith(
      
        color: const Color(0xFF807A6B)
      ),
     
     bodyText1: base.bodyText1?.copyWith(
      
        color: Colors.brown
      ),
     
    );

} 
  
} 



 