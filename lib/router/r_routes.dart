import 'package:flutter/material.dart';

//Layouts
import '../layouts/home_layout/home_layout.dart';
import '../layouts/authentication/login/login_exports.dart';
import '../layouts/authentication/register/register_exports.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    //Responsive
    '/': (_) => const HomeLayout(),
    //LOGIN
    '/login': (_) => const LoginLayout(),
    //REGISTER
    '/register': (_) => const RegisterLayout(),
  };
}
