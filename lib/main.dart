import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_gbp/presentation/blocs/cubit/second_cubic_cubit.dart';
import 'package:prueba_gbp/presentation/blocs/home_bloc/home_cubit.dart';
import 'package:prueba_gbp/presentation/screens/home_screen.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HomeCubit>()..getPopularMovies()),
        BlocProvider(
            create: (context) => sl<SecondCubicCubit>()..getTopRatedMovies())
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

/**
 * 
 * 
 * BlocProvider(
      create: (context) => di.sl<HomeCubit>()..getPopularMovies()..getTopRatedMovies(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
 */
