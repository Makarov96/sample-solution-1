part of 'second_cubic_cubit.dart';

abstract class SecondCubicState extends Equatable {
  const SecondCubicState();

  @override
  List<Object> get props => [];
}

class SecondCubicInitial extends SecondCubicState {}

class MoviesSecondLoadingState extends SecondCubicState {
  @override
  List<Object> get props => [];
}

class TopRatedMoviesLoadedState extends SecondCubicState {
  final List<MovieEntity> topRatedMovies;

  TopRatedMoviesLoadedState(this.topRatedMovies);
  @override
  List<Object> get props => [topRatedMovies];
}
