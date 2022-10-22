// import 'package:flutter/material.dart';

// //file addresses
// import 'package:awesome_icons/awesome_icons.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../../../../consts.dart';


// class SideBarMini extends StatelessWidget {
  
//   const SideBarMini({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: 80,
//       decoration: BoxDecoration(
//         // gradient: LinearGradient(
//         //   colors: gradientSidebar,
//         //   begin: Alignment.topLeft,
//         //   end: Alignment.bottomLeft,
//         //   stops: const [
            
//         //     0.3,
//         //     0.8,
//         //     0.9,
            
//         //   ]
//         // ),  
//         color: loginviewColor2,
//         borderRadius: BorderRadius.circular(20),
        
//       ),
//       child: ListView(
//         addAutomaticKeepAlives: true,
//         physics: const ClampingScrollPhysics(),
//         children: [

//             SizedBox(
//               height: 200,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Image.asset('assets/logo/logodark.png', scale: 3.0,),
//               )),

//             const Icon(FontAwesomeIcons.user, color: Colors.white70,),
//             const SizedBox(height:35,),
//             const Icon(FontAwesomeIcons.heart, color: Colors.white70,),
//             const SizedBox(height:35,),
//             const Icon(FontAwesomeIcons.code, color: Colors.white70,),
//             const SizedBox(height:35,),
//             const Icon(FontAwesomeIcons.ghost, color: Colors.white70,),
//             const SizedBox(height:35,),
//             const Icon(FontAwesomeIcons.chessKnight, color: Colors.white70,),
//             const SizedBox(height:100,),
//             const Icon(FontAwesomeIcons.userCircle, color: Colors.white70,),
            
//         ],
//       ),
//     );
//   }
// }
            
      

// class ButtonCategorie extends StatelessWidget {
  
//   final String title;
//   final IconData icon;
  
//   const ButtonCategorie({
//     Key? key,
//     required this.title,
//     required this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 50),
//       child: Row(
//         children: [
//             Text(title, style: GoogleFonts.bebasNeue(
            
//             fontSize: sizeCategories1,
//             color: Colors.black38,
            
//           ),),
//           const SizedBox(
//             width: 10,
//           ),
//           Icon(
//             icon,
//             color: Colors.black38,
//           ),

//         ],
//       ),
//     );
//   }
// }

