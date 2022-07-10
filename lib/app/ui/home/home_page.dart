import 'package:animated_carrousel/app/themes/app_colors.dart';
import 'package:animated_carrousel/app/themes/app_text_styles.dart';
import 'package:animated_carrousel/app/ui/widgets/animated_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Column(
                  children: [
                    Text(
                      'Style',
                      style: AppTextStyles.montserratTitle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'from the best of fashion',
                      style: AppTextStyles.montserratSubtitle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Center(child: AnimatedCarousel()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 42,
                  right: 42,
                  bottom: 42,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: CupertinoButton(
                    onPressed: () {},
                    color: AppColors.dark,
                    child: Text(
                      'Sign in',
                      style: AppTextStyles.montserratButton(
                        color: AppColors.light,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
