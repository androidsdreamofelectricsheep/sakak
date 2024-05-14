import 'package:flutter/material.dart';
import 'package:sakak/core/constants/constants.dart';
import 'package:sakak/views/layout/base_layout.dart';
import 'package:sakak/views/widgets/recomemded_content_widget.dart';
import 'package:sakak/views/widgets/video_player_widger.dart';

class MagazineScreen extends StatelessWidget {
  static const routeUrl = '/magazine';
  static const routeName = 'magazine';

  const MagazineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '매거진',
        isAppbarIconNeeded: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What\'s New?',
            ),
            const SizedBox(
              height: 10,
            ),
            const VideoPlayerWidget(),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '추천 컨텐츠',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: recommendedContentsList.length,
                      itemBuilder: (context, index) => RecommendedContentWidget(
                            heading: recommendedContentsList[index]['heading']!,
                            content: recommendedContentsList[index]['content']!,
                            imgUrl: recommendedContentsList[index]['imgUrl']!,
                          ))
                ],
              ),
            ),
          ],
        ));
  }
}
