import 'package:animated_carrousel/app/ui/widgets/carousel_item.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> _assets;
  final List<String> _titles;
  final ScrollController _scrollController;
  const Carousel({
    Key? key,
    required List<String> assets,
    required List<String> titles,
    required ScrollController scrollController,
  })  : _assets = assets,
        _titles = titles,
        _scrollController = scrollController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 238,
      child: AbsorbPointer(
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: _assets.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              child: CarouselItem(
                  imageAsset: _assets[index], title: _titles[index]),
            );
          },
        ),
      ),
    );
  }
}
