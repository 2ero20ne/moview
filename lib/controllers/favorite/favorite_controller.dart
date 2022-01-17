import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:moview/api/movies.dart';
import 'package:moview/controllers/favorite/favorite_state.dart';
import 'package:moview/models/movies/detail/request/movie_detail_request.dart';
import 'package:moview/utils/enum.dart';
import 'package:moview/utils/shared_preferences_manager.dart';
import 'package:state_notifier/state_notifier.dart';

class FavoriteStateNotifier extends StateNotifier<FavoriteState>
    with LocatorMixin {
  FavoriteStateNotifier() : super(const FavoriteState());

  BuildContext? context;
  final moviesApi = MoviesApi();
  final shared = SharedManager();

  @override
  void initState() async {
    super.initState();

    state = state.copyWith(
      movieList: [],
    );

    final favoriteList = await shared.getFavoriteMovieList;
    await Future.forEach(favoriteList, (String movieId) async {
      try {
        await getDetail(movieId);
      } on Exception catch (e) {
        // TODO(2ero20ne): Think about the best way.
      }
    });
  }

  Future<void> getDetail(String movieId) async {
    final request = MovieDetailRequest(
      language: L10n.of(context!)!.apiLanguage,
      movieId: movieId,
    );

    final response = await moviesApi.detail(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        movieList: state.movieList!..add(response),
      );
      updateView();
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }

  void updateView() {
    state = state.copyWith(
      updateView: state.updateView + 1,
    );
  }
}
