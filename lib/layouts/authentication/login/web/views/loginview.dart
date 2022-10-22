import 'package:flutter/material.dart';

//file addresses
import 'package:finance_app/layouts/authentication/login/web/components/text_login.dart';
import 'package:finance_app/layouts/authentication/login/web/components/shadow_background,.dart';


class LoginView extends StatefulWidget {
  
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with SingleTickerProviderStateMixin{
  
    late AnimationController _animationController;
    
    
      @override
    void initState() {
      super.initState();
      _animationController = AnimationController(vsync: this);
      
    }
  
    @override
    Widget build(BuildContext context) {
      
      final size = MediaQuery.of(context).size;
      
      return Scaffold(
        body: Stack(
          children: [
            
            //Fondo
            Stack(
              children: const[
                
                   Positioned(
          
                  right: 0,
                  child: _ImageBackground()
          
                  ),
            
        
                ShadowBackground(),
               
            ],
            ),
          /*	------------------------------------- */ 
          
          
            // TEXT LOGIN
             const Positioned(
                top: 35,
                left: 125,
                child: TextLoginView()
              
              ),
             
          ],
        ),
     );
  }
}

class _ImageBackground extends StatelessWidget {
  
  const _ImageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/logo/fondo.jpg');
  }
}