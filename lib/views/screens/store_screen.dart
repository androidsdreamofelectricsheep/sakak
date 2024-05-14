import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakak/models/store/store.dart';
import 'package:sakak/viewmodels/store/store_provider.dart';
import 'package:sakak/views/layout/base_layout.dart';
import 'package:sakak/views/widgets/store_product_card_widget.dart';

class StoreScreen extends ConsumerWidget {
  static const routeUrl = '/store';
  static const routeName = 'store';

  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List> products = ref.watch(storeProvider);

    return BaseLayout(
        showFloatingActionButton: false,
        appBarTitle: '스토어',
        isAppbarIconNeeded: true,
        child: switch (products) {
          AsyncData(:final value) => ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Store storeProduct = value[index];
                return StoreProductCardWidget(
                    name: storeProduct.name,
                    delivery: storeProduct.delivery,
                    price: storeProduct.price,
                    imgUrl: storeProduct.imgUrl);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: value.length),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        });
  }
}
