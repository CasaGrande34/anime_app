import 'package:flutter/material.dart';


class SearchWidget extends StatelessWidget {
  
  
  
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          // width : 140,
          height: 40,
          decoration: buildDecoration(),
          child: const SizedBox(
                 height: 30,
                 width: 230,
                 child: Text('Search..')
            ),
          
          
    );
  }

  BoxDecoration buildDecoration() =>  BoxDecoration(
    
    color: Colors.grey[300],
    boxShadow: const [
      
      BoxShadow(
        color: Colors.black38,
        offset: Offset( 6,6 ),
        blurRadius: 15,
        spreadRadius: 1,
      ),
      // const BoxShadow(
      //   color: Colors.white,
      //   offset: Offset( -6,-6 ),
      //   blurRadius: 15,
      //   spreadRadius: 1,
      // )
      
    ],
    // gradient: LinearGradient(
      
    //     colors: [
          
          
          
    //     ],
      
    //   ),
    borderRadius: BorderRadius.circular(40),
    
  );
}