import 'package:flutter/material.dart';


//file addresses


class LoginScreenM extends StatelessWidget {
  
  const LoginScreenM({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        drawer: const Drawer(),
        
        appBar: AppBar(
          
          centerTitle: true,
          title: const Text(
            
            'LoginScreenM',
            style: TextStyle(
              
              fontSize: 15,
              
              
            ),
          ),
        ),
        
       body: SingleChildScrollView(
        child: Column(
          children: const [
            
          ],
        ),
       ),
        
     );
  }
}

