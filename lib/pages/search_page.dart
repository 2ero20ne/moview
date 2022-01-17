import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:moview/controllers/search/search_controller.dart';
import 'package:moview/controllers/search/search_state.dart';
import 'package:moview/gen/assets.gen.dart';
import 'package:moview/pages/movie_detail_page.dart';
import 'package:moview/utils/constant.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SearchStateNotifier, SearchState>(
      create: (_) => SearchStateNotifier()..context = context,
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  _Page({Key? key}) : super(key: key);

  final _refreshController = RefreshController(initialRefresh: false);

  Future<void> _onLoading(BuildContext context) async {
    await context.read<SearchStateNotifier>().search();
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getSearchBar(context),
      body: SmartRefresher(
        enablePullDown: false,
        enablePullUp: true,
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus? mode) {
            Widget? body;
            if (mode == LoadStatus.loading) {
              body = const CupertinoActivityIndicator();
            } else {
              body = const SizedBox.shrink();
            }
            return SizedBox(
              height: 55,
              child: Center(child: body),
            );
          },
        ),
        controller: _refreshController,
        onLoading: () => _onLoading(context),
        child: _getScrollMovies(context),
      ),
    );
  }

  PreferredSizeWidget _getSearchBar(BuildContext context) {
    final searchTextController =
        context.select((SearchState state) => state.searchTextController!);
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: SafeArea(
        child: AnimSearchBar(
          autoFocus: true,
          animationDurationInMilli: 250,
          helpText: '',
          color: Colors.red,
          style: const TextStyle(
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          textController: searchTextController,
          onSuffixTap: () {
            context.read<SearchStateNotifier>().clearSearch();
          },
        ),
      ),
    );
  }

  Widget _getScrollMovies(BuildContext context) {
    final state = context.select((SearchState state) => state);
    return state.movieList!.isEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              L10n.of(context)!.noMovie,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        : CustomScrollView(
            slivers: <Widget>[
              ResponsiveSliverGridList(
                horizontalGridMargin: 0,
                verticalGridMargin: 30,
                minItemWidth: 100,
                children: List.generate(
                  state.movieList!.length,
                  (index) {
                    return GestureDetector(
                      child: CachedNetworkImage(
                        imageUrl: state.movieList![index].posterPath != null
                            ? '$resourceUrl${state.movieList![index].posterPath}'
                            : '',
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            height: 180,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        errorWidget: (context, url, dynamic error) {
                          return Container(
                            height: 180,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: Assets.images.noimage.image().image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                      onTap: () {
                        context.push(
                          MovieDetailPage.getRouteNameWithId(
                            state.movieList![index].id.toString(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              // SliverToBoxAdapter(
              //   child: yourFooter,
              // ),
            ],
          );
  }
}
