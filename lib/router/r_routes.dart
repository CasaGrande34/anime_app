import 'package:flutter/material.dart';

//Layouts
import 'package:finance_app/layouts/authentication/register/register_layout.dart';
import 'package:finance_app/layouts/authentication/login/login_layout.dart';
import '../layouts/home_layout/home_layout.dart';


//GET ROUTES
Map<String, WidgetBuilder> getRoutes () {
    
    return {
      
      //Responsive
      '/': (_) => const HomeLayout(), 
      //LOGIN
      '/login' : (_) => const LoginLayout(), 
      //REGISTER
      '/register' : (_) => const RegisterLayout(),                  

    };
   
  }