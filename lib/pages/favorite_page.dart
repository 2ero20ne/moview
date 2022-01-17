import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:moview/controllers/favorite/favorite_controller.dart';
import 'package:moview/controllers/favorite/favorite_state.dart';
import 'package:moview/gen/assets.gen.dart';
import 'package:moview/pages/movie_detail_page.dart';
import 'package:moview/utils/constant.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  static const routeName = '/favorite';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<FavoriteStateNotifier, FavoriteState>(
      create: (_) => FavoriteStateNotifier()..context = context,
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  _Page({Key? key}) : super(key: key);

  final _refreshController = RefreshController(initialRefresh: false);

  Future<void> _onRefresh(BuildContext context) async {
    context.read<FavoriteStateNotifier>().initState();
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: false,
        header: CustomHeader(
          builder: (BuildContext context, RefreshStatus? mode) {
            Widget? body;
            if (mode == RefreshStatus.refreshing) {
              body = const CupertinoActivityIndicator();
            } else if (mode == RefreshStatus.completed) {
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
        onRefresh: () => _onRefresh(context),
        child: _getScrollMovies(context),
      ),
    );
  }

  Widget _getScrollMovies(BuildContext context) {
    final state = context.select((FavoriteState state) => state);
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
