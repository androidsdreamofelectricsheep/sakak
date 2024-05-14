import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  width: 100.w,
                  height: 100.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text('강성윤', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            SizedBox(
              height: 50.w,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 80.w,
                ),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: myInfoList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Icon(myInfoList[index]['icon']),
                    Text(myInfoList[index]['menu'],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.w,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: myPageButtonList.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myPageButtonList[index]['category'],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 10.w,
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
                            myPageButtonList[index]['buttons'][i]['button'],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w500),
                          )),
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
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  '로그아웃',
                  style: TextStyle(color: Colors.red),
                )),
          ],
        ));
  }
}
