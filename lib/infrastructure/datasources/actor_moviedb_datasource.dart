import 'package:cinemapedia/config/constants/enviroment.dart';
import 'package:cinemapedia/domain/datasource/actors_datasorce.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorMoviedbDatasource extends ActorsDatasorce {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Enviroment.movieDbKey, 'lenguage': 'es-MX'},
    ),
  );
  
  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get(
      '/movie/$movieId/credits',
    );
    final castResponse = CreditsResponse.fromJson(response.data);
    List<Actor> actors = castResponse.cast.map(
      (cast)=> ActorMapper.castToEntity(cast)
    ).toList();
    return actors;
  }
}
