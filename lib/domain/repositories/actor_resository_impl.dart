import 'package:cinemapedia/domain/datasource/actors_datasorce.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';

class ActorResositoryImpl extends ActorsRepository {
  final ActorsDatasorce datasorce;

  ActorResositoryImpl(this.datasorce);
  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasorce.getActorsByMovie(movieId);
  }
}
