import 'package:cinemapedia/domain/datasource/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movies.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRespositoryImpl extends MoviesRepository{
  
  final MoviesDatasource datasource;
  MovieRespositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
  return datasource.getNowPlaying(page: page);
  }
  
}