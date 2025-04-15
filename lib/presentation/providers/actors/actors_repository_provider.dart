import 'package:cinemapedia/domain/repositories/actor_resository_impl.dart';
import 'package:cinemapedia/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorRespositoryProvider = Provider((ref){
  return ActorResositoryImpl(ActorMovieDbDatasource());
});
