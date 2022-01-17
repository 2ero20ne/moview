import 'package:moview/controllers/movie_detail/movie_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';

class MovieDetailStateNotifier extends StateNotifier<MovieDetailState> {
  MovieDetailStateNotifier() : super(const MovieDetailState());
}
