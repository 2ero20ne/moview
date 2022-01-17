import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:moview/api/movies.dart';
import 'package:moview/controllers/movie_detail/movie_detail_state.dart';
import 'package:moview/models/movies/detail/request/movie_detail_request.dart';
import 'package:moview/models/movies/similar/request/movie_similar_request.dart';
import 'package:moview/utils/dialog/custom_exception_dialog.dart';
import 'package:moview/utils/enum.dart';
import 'package:moview/utils/shared_preferences_manager.dart';
import 'package:state_notifier/state_notifier.dart';

class MovieDetailStateNotifier extends StateNotifier<MovieDetailState>
    with LocatorMixin {
  MovieDetailStateNotifier() : super(const MovieDetailState());

  String? movieId;
  BuildContext? context;
  final moviesApi = MoviesApi();
  final shared = SharedManager();

  @override
  void initState() async {
    super.initState();

    state = state.copyWith(
      favoriteList: await shared.getFavoriteMovieList,
      isFavorite: (await shared.getFavoriteMovieList).contains(movieId),
    );

    try {
      await getDetail();
      await getSimilar();
    } on Exception catch (e) {
      await showDialog<void>(
        context: context!,
        builder: (dialogContext) {
          return CustomExceptionDialog(
            content: e.toString(),
            onPressed: Navigator.of(dialogContext).pop,
          );
        },
      );
      return;
    }
  }

  Future<void> getDetail() async {
    final request = MovieDetailRequest(
      language: L10n.of(context!)!.apiLanguage,
      movieId: movieId!,
    );

    final response = await moviesApi.detail(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        movie: response,
      );
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }

  Future<void> getSimilar() async {
    final request = MovieSimilarRequest(
      language: L10n.of(context!)!.apiLanguage,
      movieId: movieId!,
    );

    final response = await moviesApi.similar(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        similarList: response.results,
      );
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }

  Future<void> toggleFavorite() async {
    if (state.favoriteList!.contains(movieId)) {
      state = state.copyWith(
        favoriteList: state.favoriteList!..remove(movieId),
        isFavorite: false,
      );
    } else {
      state = state.copyWith(
        favoriteList: state.favoriteList!..add(movieId!),
        isFavorite: true,
      );
    }
    await shared.setFavoriteMovie(favoriteMovieList: state.favoriteList!);
  }
}
