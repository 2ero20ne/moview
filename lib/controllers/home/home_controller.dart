import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:moview/api/movies.dart';
import 'package:moview/controllers/home/home_state.dart';
import 'package:moview/models/movies/popular/request/movie_popular_request.dart';
import 'package:moview/models/movies/top_rated/request/movie_top_rated_request.dart';
import 'package:moview/utils/dialog/custom_exception_dialog.dart';
import 'package:moview/utils/enum.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeStateNotifier extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateNotifier() : super(const HomeState());

  BuildContext? context;
  final moviesApi = MoviesApi();

  @override
  void initState() async {
    super.initState();

    try {
      await getCarousel();
      await getPopular();
      await getTopRated();
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

  Future<void> getCarousel() async {
    final request = MoviePopularRequest(
      language: L10n.of(context!)!.apiLanguage,
      page: '1',
    );

    final response = await moviesApi.popular(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        carouselList: response.results,
      );
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }

  Future<void> getPopular() async {
    final request = MoviePopularRequest(
      language: L10n.of(context!)!.apiLanguage,
      page: '2',
    );

    final response = await moviesApi.popular(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        popularList: response.results,
      );
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }

  Future<void> getTopRated() async {
    final request = MovieTopRatedRequest(
      language: L10n.of(context!)!.apiLanguage,
    );

    final response = await moviesApi.topRated(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      state = state.copyWith(
        movieList: response.results,
      );
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }
}
