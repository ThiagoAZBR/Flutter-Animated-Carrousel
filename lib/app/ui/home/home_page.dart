import 'package:animated_carrousel/app/ui/widgets/paywall_carrousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: PayWallCarrousel(),
        ),
      ),
    );
  }
}
