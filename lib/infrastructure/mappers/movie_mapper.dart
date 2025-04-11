import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) {
    return Movie(
      adult: moviedb.adult,
      backdropPath:
          (moviedb.backdropPath != '')
              ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
              : 'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_SY879_.jpg',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath:  (moviedb.posterPath != '')
              ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
              : 'no-poster',//'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_SY879_.jpg',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount,
    );
  }
  static Movie movieDetailsToEntity(MovieDetails moviedb)=> Movie(
    adult: moviedb.adult,
      backdropPath:
          (moviedb.backdropPath != '')
              ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
              : 'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_SY879_.jpg',
      genreIds: moviedb.genres.map((e) => e.name).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath:  (moviedb.posterPath != '')
              ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
              : 'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_SY879_.jpg',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount,
  );
  
}
