import 'package:cinemapedia/domain/entities/actor.dart';

abstract class ActorsDatasorce {
  Future<List<Actor>> getActorsByMovie(String movieId);
}