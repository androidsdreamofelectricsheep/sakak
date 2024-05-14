import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sakak/models/store/store.dart';
import 'package:sakak/services/store/store_repository.dart';

part 'store_provider.g.dart';

@riverpod
Future<List> store(StoreRef ref) async {
  final storeRepo = ref.watch(storeRepositoryProvider);
  final response = await storeRepo.getProducts();

  List products = [];

  response?.forEach((key, value) {
    products.add(Store.fromJson(value));
  });

  return products;
}
