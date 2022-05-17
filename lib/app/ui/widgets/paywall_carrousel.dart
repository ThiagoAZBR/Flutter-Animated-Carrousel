import 'package:animated_carrousel/app/themes/app_assets.dart';
import 'package:animated_carrousel/app/ui/widgets/carousel.dart';
import 'package:flutter/material.dart';

class PayWallCarrousel extends StatefulWidget {
  const PayWallCarrousel({Key? key}) : super(key: key);

  @override
  State<PayWallCarrousel> createState() => _PayWallCarrouselState();
}

class _PayWallCarrouselState extends State<PayWallCarrousel> {
  int _scrollCounter = 0;
  late double _maxScroll;

  final List<String> _assets = <String>[
    AppAssets.pexelsOne,
    AppAssets.pexelsTwo,
    AppAssets.pexelsThree,
    AppAssets.pexelsFour,
  ];

  final List<String> _titles = <String>[
    'All Styles',
    'Unique Experience',
    'Exclusive Items',
    'New Brands',
  ];

  final ScrollController _scrollController = ScrollController();

  void animateCarousel([int duration = 8]) {
    _scrollController.animateTo(
      _maxScroll,
      duration: Duration(seconds: duration),
      curve: Curves.linear,
    );
  }

  void infinityScroll() {
    if (_scrollCounter == 4) {
      _scrollCounter = 0;
    }
    setState(() {
      _assets.add(_assets[_scrollCounter]);
      _titles.add(_titles[_scrollCounter]);
    });
    if (_scrollController.position.pixels == _maxScroll) {
      // Just with this future here the maxScroll updates before setState
      Future.delayed(const Duration(milliseconds: 0), () {
        setState(() {
          _maxScroll = _scrollController.position.maxScrollExtent;
        });

        // Animation duration increases with list length to don't change scroll speed
        double _animationDuration = _assets.length * 2.5;
        animateCarousel(_animationDuration.round());
      });
    }
    _scrollCounter++;
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(infinityScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _maxScroll = _scrollController.position.maxScrollExtent;
      animateCarousel();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Carousel(
      assets: _assets,
      titles: _titles,
      scrollController: _scrollController,
    );
  }
}
