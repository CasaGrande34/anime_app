import 'package:flutter/material.dart';

//file addresses
import 'r_delegate.dart';
import 'r_parser.dart';
import 'r_state.dart';

class Flipbook extends StatefulWidget {
  final String title;
  final ThemeData? theme;
  final Map< String, WidgetBuilder > routes;

  const Flipbook({
    
    Key? key,
    this.title = '',
    this.theme,
    required this.routes,
    
  }) : super(key: key);

  @override
  FlipbookState createState() => FlipbookState();
}

class FlipbookState extends State<Flipbook> {
  
  
  
  final _routeParser = RouteParser();
  late final FlippinRouterDelegate _routerDelegate;

  @override
  void initState() {
    super.initState();

    _routerDelegate = FlippinRouterDelegate(widget.routes);
  }

  @override
  Widget build(BuildContext context) {
    
    //MATERIAL APP ===========
    return MaterialApp.router(
      
      title: widget.title,
      theme: widget.theme,
      debugShowCheckedModeBanner: false,
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeParser,
      
    );
    
  }
}

extension RouteContext on BuildContext {
  RouteState get route => RouteState.instance;
}