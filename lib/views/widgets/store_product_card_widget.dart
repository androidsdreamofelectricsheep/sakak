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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                Text(
                  delivery,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.grey.shade800),
                ),
                SizedBox(
                  height: 7.w,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '100%',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.red)),
                    TextSpan(
                        text: ' 0원',
                        style: Theme.of(context).textTheme.titleMedium),
                  ]),
                ),
                Text('쿠폰 할인가',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.red))
              ],
            ),
          )
        ],
      ),
    );
  }
}
