import 'package:flutter/material.dart';

//dependencies
import 'package:lottie/lottie.dart';

class LottieThemeButton extends StatefulWidget {
  
  const LottieThemeButton({Key? key}) : super(key: key);

  @override
  State<LottieThemeButton> createState() => _LottieThemeButtonState();
}

class _LottieThemeButtonState extends State<LottieThemeButton> with SingleTickerProviderStateMixin{
  
    bool isPressed = false;
    late AnimationController _animationController;
  
    @override
    void initState() {
      super.initState();
      _animationController = AnimationController(vsync: this,
        duration: const Duration(milliseconds: 1000)
      
      );
      
    }
  
    @override
    Widget build(BuildContext context) {
      return GestureDetector(
            onTap: () {
              
              isPressed = !isPressed;
              (isPressed) ?
              _animationController.animateTo(1) :
              _animationController.animateTo(0);              
              
            },
            child: LottieBuilder.asset(
                
              'assets/lottie/button_theme.json', 
                      
                width: 90,
                height: 90,
                repeat: false,
                reverse: false,
                animate: false,
                controller: _animationController,
                fit: BoxFit.contain,
                      
      ),
    );
  }
}