import 'package:animated_carrousel/app/themes/app_colors.dart';
import 'package:animated_carrousel/app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String _imageAsset;
  final String _title;
  const CarouselItem(
      {Key? key, required String imageAsset, required String title})
      : _imageAsset = imageAsset,
        _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          child: Column(
            children: <Widget>[
              Image.asset(
                _imageAsset,
                width: 162,
                height: 202,
              ),
              Container(
                color: AppColors.grayBorder,
                width: 162,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    _title,
                    style: AppTextStyles.robotoCaption(),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
