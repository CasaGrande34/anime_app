import 'package:flutter/material.dart';

//dependencies
import 'package:provider/provider.dart';
import 'package:finance_app/providers/theme_changer.dart';

//file addresses
import 'package:lottie/lottie.dart';
import 'custom_elevated_button.dart';
import 'package:finance_app/layouts/authentication/login/web/components/icon_aldea.dart';


class TextLoginView extends StatelessWidget {
  
  const TextLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //Theme
    final theme = Provider.of<ThemeChanger>(context);
    final size = MediaQuery.of(context).size;
    
    return  Container(
    
              width : size.width / 2.8,
              height: size.height * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 37, 17, 17) 
            
              ),    
              child: Stack(
                
                children: [
                  
                  Positioned(
                    right: 0,
                    bottom: 0,
                    height: 250,
                    width: 250,
                    child: Image.asset('assets/logo/simboloaldea.png'),
                    
                  ),
                  
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        
                        const SizedBox(
                          height: 20,
                        ),
                        //LOGO
                        Container(
                          // width: 1200,
                          child: LottieBuilder.asset(
                                              
                            'assets/lottie/logo_login.json', 
                              width: double.infinity,
                              height: 250,
                              
                              // repeat: false,
                              // reverse: false,
                              // animate: false,
                              fit: BoxFit.contain,
                              
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        //TextFormFields
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: TextFormField(
                            
                            decoration: buildInput(
                              
                              'Email',
                              'pedrito@gmail.com',
                              'recuerde diferenciar entre minusculas y mayusculas',
                              
                            ),
                            
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: TextFormField(
                            
                            decoration: buildInput(
                              
                              'Password',
                              '********',
                              'recuerde diferenciar entre minusculas y mayusculas',
                              
                            ),
                            
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomElevatedButton(
                          onPressed: () {  },
                          child: const Text('Login',),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Row(
                        //   children: [
                        //     Switch.adaptive(
                        //       value: theme.themeDark, 
                        //       onChanged: (value) {
                        //         theme.themeDark = value;
                        //       },
                              
                        //     ),
                        //     const SizedBox(width: 10,),
                        //     const LottieThemeButton()  
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ],
              ) 
            );
  }


//!Correr este input a un archivo independiente
  InputDecoration buildInput(String label, hinttext, helpertext,  ) => InputDecoration(
    
     border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      fillColor: const Color.fromARGB(255, 37, 7, 5),
      filled: true,
      
      focusColor: Colors.red,
      
      helperStyle: buildHelperText(),
      helperText: helpertext,
      
      hintStyle: buildHintText(),
      hintText: hinttext,
      
      hoverColor: Colors.red,
      
      icon: const IconAldeaHoja(),
      label: Text( label  , style: const TextStyle(
        color: Colors.white38
      ),)
      
  );
  
  /*	------------------------------------- */ 

  TextStyle buildHintText() => const TextStyle(
    
    color: Colors.white30
    
  );
  
  /*	------------------------------------- */ 

  TextStyle buildHelperText() =>  const TextStyle(
    
    color: Colors.white12
    
    
  );




}
