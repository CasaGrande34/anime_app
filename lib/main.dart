import 'package:flutter/material.dart';

//dependencies
import 'package:provider/provider.dart';
import 'providers/clan_provider.dart';
import 'providers/sidemenu_provider.dart';
import 'providers/theme_changer.dart';

//file addresses
import 'router/r_flip.dart';
import 'router/r_routes.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
      
        ChangeNotifierProvider( create: ( _ ) => SideMenuProvider(), lazy: false ),    
        ChangeNotifierProvider( create: ( _ ) => ThemeChanger() ),
        ChangeNotifierProvider( create: ( _ ) => ClanProvider(), lazy: false ),
        
      ],
      
      child: const MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final theme = Provider.of<ThemeChanger>(context);
    
    return Flipbook(
      title: 'Anime Naruto App',
      routes: getRoutes(),
      // theme: theme.currentTheme
    );
  }
  
  
}