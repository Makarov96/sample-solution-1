import 'package:prueba_gbp/data/models/actor_model.dart';
import 'package:prueba_gbp/data/models/movie_model.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MovieModel>> getPopularesMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<ActorModel>> getCast(String peliId);
}
