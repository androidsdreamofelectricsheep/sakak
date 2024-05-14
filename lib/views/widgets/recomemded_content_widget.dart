import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            width: 60,
            height: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heading,
                overflow: TextOverflow.ellipsis,
              ),
              Text(content)
            ],
          ))
        ],
      ),
    );
  }
}
