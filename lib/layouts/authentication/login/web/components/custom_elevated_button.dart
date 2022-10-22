import 'package:flutter/material.dart';

//dependencies

//file addresses


class CustomElevatedButton extends StatelessWidget {
  
  final double? width;
  final double height;
  final List<Color>? linearGradient;
  final VoidCallback? onPressed;
  final Widget child;

  const CustomElevatedButton({
    Key? key,
    
    required this.onPressed,
    required this.child,
    this.width = 280,
    this.height = 40.0,
    this.linearGradient,
    
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: width,
      height: height,
      decoration: _buildDecoration(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: child,
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    
    return BoxDecoration(
  
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          
          Color.fromARGB(255, 114, 8, 0),
          Color.fromARGB(255, 247, 48, 33),
          Color.fromARGB(255, 114, 8, 0),
          
        ],
        stops: [
          
          0.1,
          0.4,
          0.99,
          
        ]
        
       ),// 
    );
  }
  
  
}


