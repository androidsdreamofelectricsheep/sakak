import 'package:flutter/material.dart';

class CarouselBannerCardWidget extends StatelessWidget {
  final String bannerText;
  const CarouselBannerCardWidget({super.key, required this.bannerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      // decoration: BoxDecoration(border: Border.all()),
      child: Text(
        bannerText,
      ),
    );
  }
}
