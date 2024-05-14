import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakak/core/constants/constants.dart';
import 'package:sakak/views/layout/base_layout.dart';
import 'package:sakak/views/widgets/carousel_banner_widget.dart';
import 'package:sakak/views/widgets/home_menu_card_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeUrl = '/';
  static const routeName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        showFloatingActionButton: true,
        appBarTitle: '홈',
        isAppbarIconNeeded: true,
        child: Column(
          children: [
            SizedBox(
              height: 20.w,
            ),
            const CarouselBannerWidget(),
            SizedBox(
              height: 15.w,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 1, // 2(가로) / 1(세로) 비율
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.w),
                itemCount: homeMenuList.length,
                itemBuilder: (context, index) => HomeMenuCardWidget(
                      menu: homeMenuList[index]['menu'],
                      icon: homeMenuList[index]['icon'],
                    ))
          ],
        ));
  }
}
