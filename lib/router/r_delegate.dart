import 'package:flutter/material.dart';

//file addresses
import 'r_parser.dart';
import 'r_state.dart';

class FlippinRouterDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin { 

  final Map<String, WidgetBuilder> routes;
  final RouteState routeState = RouteState.instance;
  
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  FlippinRouterDelegate(this.routes)
      : navigatorKey = GlobalKey<NavigatorState>() {
        
    routeState.addListener(notifyListeners);
    
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Navigator(
      key: navigatorKey,
      pages: _getPages(),
      onPopPage: (route, result) => route.didPop(result),
    );
    
  }  
  
  @override
  Future<void> setNewRoutePath(RoutePath configuration) async {
    
    routeState.setState(configuration);
    
  }
  
 @override
 RoutePath get currentConfiguration => routeState.path;
  
 List<Page<dynamic>> _getPages() {
      
    List<Page<dynamic>> pages = [];

    for (String key in routes.keys) {
      if (key == '/') {
        pages.add(
          MaterialPage(
            
              key: ValueKey(routeState.path),
              child: Builder(
              builder: routes[key]!,
              
            ),
          ),
        );
          
        break;
      }
  
    }
    return pages;
  }
}
  
  
  
  
