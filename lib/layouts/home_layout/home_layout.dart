import 'package:flutter/material.dart';

import 'mobile/screens/mobile_home_screen.dart';
import 'web/views/home_view.dart';

//file addresses

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) return const HomeScreenM();

        return const HomeView();
      },
    );
  }
}
