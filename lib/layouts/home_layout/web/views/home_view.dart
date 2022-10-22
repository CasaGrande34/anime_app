import 'package:flutter/material.dart';

//file addresses
import '../components/contenweb.dart';
import 'package:awesome_icons/awesome_icons.dart';

class HomeView extends StatelessWidget {

 const HomeView({super.key});              

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        //HEADER
        children: const [
                     
           ContentWeb()
        ],
        
        
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.dollarSign)
        
      ),
   );
  }
}

