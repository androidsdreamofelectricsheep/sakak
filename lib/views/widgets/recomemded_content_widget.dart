import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedContentWidget extends StatelessWidget {
  final String heading, content, imgUrl;

  const RecommendedContentWidget(
      {super.key,
      required this.heading,
      required this.content,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10).w,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            width: 60.w,
            height: 60.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heading,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              Text(content)
            ],
          ))
        ],
      ),
    );
  }
}
