import 'package:cinemapedia/domain/repositories/local_storage_respository_impl.dart';
import 'package:cinemapedia/infrastructure/datasources/isar_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRespositoryImpl(IsarDatasource());
});
