import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sakak/core/constants/constants.dart';
import 'package:sakak/views/layout/base_layout.dart';

class MyPageScreen extends StatelessWidget {
  static const routeUrl = '/mypage';
  static const routeName = 'mypage';

  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '마이페이지',
        isAppbarIconNeeded: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2024/04/12/15/46/beautiful-8692180_1280.png'),
                          fit: BoxFit.cover)),
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('강성윤')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 80,
                ),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: myInfoList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Icon(myInfoList[index]['icon']),
                    Text(myInfoList[index]['menu'])
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: myPageButtonList.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(myPageButtonList[index]['category']),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: myPageButtonList[index]['buttons'].length,
                    itemBuilder: (context, i) => GestureDetector(
                        onTap: () {
                          context.pushNamed(
                              myPageButtonList[index]['buttons'][i]['link']);
                        },
                        child: Text(
                            myPageButtonList[index]['buttons'][i]['button'])),
                    separatorBuilder: (context, i) => const SizedBox(
                      height: 8,
                    ),
                  )
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('로그아웃')),
          ],
        ));
  }
}
