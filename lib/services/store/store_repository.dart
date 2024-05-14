import 'package:sakak/core/constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_repository.g.dart';

class StoreRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getProducts() async {
    final doc = await _db.collection(collectionName).doc(productDoc).get();

    return doc.data();
  }
}

@riverpod
StoreRepository storeRepository(StoreRepositoryRef ref) => StoreRepository();
