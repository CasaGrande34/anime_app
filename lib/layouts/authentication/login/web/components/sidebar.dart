// import 'package:awesome_icons/awesome_icons.dart';
// import 'package:finance_app/layouts/authentication/login/web/components/lottie_theme_button.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart';


// class SideBar extends StatefulWidget {
//   const SideBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SideBar> createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin {
  

//   @override
//   Widget build(BuildContext context) {
    
    
//     return Container(
//       height: double.infinity,
//       width: 
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

//         // const SizedBox(height: 35,),
//             Container(
//               decoration: const BoxDecoration(),
//               height: 200,
//               child: Image.asset('assets/logo/logodark.png', scale: 3.0,)),
//             // const SizedBox(height: 35,),
        
//            const ButtonCategorie(
//               title: 'Profile', 
//             icon: FontAwesomeIcons.user,
//             ),
//             const SizedBox(height:35,),
//             const ButtonCategorie(
//               title: 'Relathions', 
//             icon: FontAwesomeIcons.heart,
//             ),
//             const SizedBox(height:35,),
//             const ButtonCategorie(
//               title: 'Hacking', 
//             icon: FontAwesomeIcons.code,
//             ),
//             const SizedBox(height:35,),
//             const ButtonCategorie(
//               title: 'PacMan', 
//             icon: FontAwesomeIcons.ghost,
//             ),
//             const SizedBox(height:35,),
//             const ButtonCategorie(
//               title: 'Estrategysssss', 
//             icon: FontAwesomeIcons.chessKnight,
//             ),
//             const SizedBox(height:70,),
//             const ButtonCategorie(
//               title: 'Logout', 
//             icon: FontAwesomeIcons.userCircle,
//             ),
//             const SizedBox(height:15,),
//             const LottieThemeButton()
            
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
//     return Stack(
//       children: [
        
//           Positioned(
//             top: -30,
//             left: 120,
//             // height: 80,
//             child: Container(
//               height: 200,
//               child: CustomPaint(
//                 painter: CurvePainter(),
//               ),
//             ),
//         ),
//          Positioned(
//           // top: 5,
//            child: SizedBox(
            
//             height: 40,
//             child: 
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
                  
//                   const SizedBox(
//                     width: 50,
//                   ),
//                   Icon(
//                     icon,
//                     color: Colors.black,
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   // const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: FittedBox(
//                       child: Text(title, style: GoogleFonts.bebasNeue(
//                         textStyle: const TextStyle(
//                           overflow: TextOverflow.ellipsis
                          
//                         ),
//                         textBaseline: TextBaseline.alphabetic,
//                         fontSize: sizeCategories1,
//                         color: Colors.black,
                        
//                       ),),
//                     ),
//                   ),
                 
//                 ],
//               ),
            
//            ),
//          ),
//       ],
//     );
//   }
// }

// class CurvePainter extends CustomPainter {
  
//   @override
//   void paint(Canvas canvas, Size size) {
    
//      Path  path  = Path();
//      Paint paint = Paint(); 
     
//      path.moveTo( 101, 0 );
//      path.quadraticBezierTo( 0, 20, 80, 20 );
//      path.lineTo( -75, 16 );
//      path.quadraticBezierTo( -100, -500 ,-75, 42 );
//      path.lineTo( 101, 40 );
//      path.close();
     
//      path.moveTo( 101, 80 );
//      path.quadraticBezierTo( 0, 60, 75, 60 );
//      path.lineTo( -75, 65 );
//      path.quadraticBezierTo( -100, 500, -75, 42 );
//      path.lineTo( 101, 40 );
//      path.close();
     
  
//      paint.color = loginviewColor1;
//      paint.style = PaintingStyle.fill;
//      paint.strokeWidth = 5.0;
//      canvas.drawPath(path, paint);
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
    
//     throw UnimplementedError();
    
//   }
// }