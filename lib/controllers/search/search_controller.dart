import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:moview/api/search.dart';
import 'package:moview/controllers/search/search_state.dart';
import 'package:moview/models/search/movie/request/search_movie_request.dart';
import 'package:moview/utils/enum.dart';
import 'package:state_notifier/state_notifier.dart';

class SearchStateNotifier extends StateNotifier<SearchState> with LocatorMixin {
  SearchStateNotifier() : super(const SearchState());

  BuildContext? context;
  final searchApi = SearchApi();
  String currentSearchText = '';
  int searchPage = 1;

  @override
  void initState() async {
    super.initState();

    state = state.copyWith(
      searchTextController: TextEditingController()..addListener(search),
      movieList: [],
    );
  }

  void clearSearch() {
    searchPage = 1;
    currentSearchText = '';
    state.searchTextController!.clear();
    state = state.copyWith(
      movieList: [],
    );
  }

  Future<void> search() async {
    if (state.searchTextController!.text.isEmpty) {
      return;
    }

    if (currentSearchText != state.searchTextController!.text) {
      searchPage = 1;
    }

    final request = SearchMovieRequest(
      language: L10n.of(context!)!.apiLanguage,
      query: state.searchTextController!.text,
      includeAdult: false.toString(),
      page: searchPage.toString(),
    );

    final response = await searchApi.movie(
      context!,
      request: request,
    );

    final resultCode = response.statusCode;

    if (resultCode == ApiStatus.success.code) {
      if (currentSearchText == state.searchTextController!.text) {
        state = state.copyWith(
          movieList: [...state.movieList!, ...response.results],
        );
      } else {
        state = state.copyWith(
          movieList: response.results,
        );
        currentSearchText = state.searchTextController!.text;
      }
      searchPage++;
    } else {
      throw Exception(
        response.statusMessage,
      );
    }
  }
}
