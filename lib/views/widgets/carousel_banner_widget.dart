import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakak/core/constants/constants.dart';
import 'package:sakak/views/widgets/carousel_banner_card_widget.dart';

class CarouselBannerWidget extends StatefulWidget {
  const CarouselBannerWidget({super.key});

  @override
  State<CarouselBannerWidget> createState() => _CarouselBannerWidgetState();
}

class _CarouselBannerWidgetState extends State<CarouselBannerWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.w,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(10)).w,
      ),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
          child: CarouselSlider(
            items: carouselBannerList
                .map((e) =>
                    CarouselBannerCardWidget(bannerText: e['bannerText']!))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carouselBannerList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.w,
                height: 12.w,
                margin: EdgeInsets.symmetric(vertical: 8.w, horizontal: 4.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9.w : 0.4.w)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
