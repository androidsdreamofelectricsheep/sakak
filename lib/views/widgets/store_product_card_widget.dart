import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreProductCardWidget extends StatelessWidget {
  final String name, delivery, price, imgUrl;
  const StoreProductCardWidget(
      {super.key,
      required this.name,
      required this.delivery,
      required this.price,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5).w,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(10)).w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(10)).w,
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            width: 90.w,
            height: 90.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(delivery),
                Text(
                  price,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough),
                ),
                SizedBox(
                  height: 10.w,
                ),
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(text: '100%'),
                    TextSpan(text: ' 0원'),
                  ]),
                ),
                const Text('쿠폰 할인가')
              ],
            ),
          )
        ],
      ),
    );
  }
}
