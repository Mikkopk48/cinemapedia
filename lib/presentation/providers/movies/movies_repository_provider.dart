import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_respository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRespositoryProvider = Provider((ref){
  return MovieRespositoryImpl(MoviedbDatasource());
});
