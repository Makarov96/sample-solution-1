import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:prueba_gbp/domain/entities/movie_entity.dart';
import 'package:prueba_gbp/domain/usecases/get_populares_movies.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetPopularesMoviesUseCase getPopularesMoviesUseCase;

  HomeCubit({this.getPopularesMoviesUseCase}) : super(MoviesInitial());

  Future<void> getPopularMovies() async {
    try {
      emit(MoviesLoadingState());
      final popularMovies = await getPopularesMoviesUseCase.call();
      emit(PopularesMoviesLoadedState(popularMovies));
    } catch (e) {
      print(e);
    }
  }
}
