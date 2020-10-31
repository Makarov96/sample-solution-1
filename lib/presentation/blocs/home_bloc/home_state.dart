part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class MoviesInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class MoviesLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class PopularesMoviesLoadedState extends HomeState {
  final List<MovieEntity> popularesMovies;

  PopularesMoviesLoadedState(this.popularesMovies);
  @override
  List<Object> get props => [popularesMovies];
}
