import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_top_rated_movies.dart';

part 'second_cubic_state.dart';

class SecondCubicCubit extends Cubit<SecondCubicState> {
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  SecondCubicCubit({this.getTopRatedMoviesUseCase})
      : super(SecondCubicInitial());

  Future<void> getTopRatedMovies() async {
    try {
      emit(MoviesSecondLoadingState());
      final topRatedMovies = await getTopRatedMoviesUseCase.call();
      emit(TopRatedMoviesLoadedState(topRatedMovies));
    } catch (e) {
      print(e);
    }
  }
}
