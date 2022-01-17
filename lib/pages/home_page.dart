import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:moview/controllers/home/home_controller.dart';
import 'package:moview/controllers/home/home_state.dart';
import 'package:moview/gen/assets.gen.dart';
import 'package:moview/models/common/movie_result.dart';
import 'package:moview/pages/movie_detail_page.dart';
import 'package:moview/utils/constant.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeStateNotifier, HomeState>(
      create: (_) => HomeStateNotifier()..context = context,
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  _Page({Key? key}) : super(key: key);

  final _refreshController = RefreshController(initialRefresh: false);

  Future<void> _onRefresh(BuildContext context) async {
    context.read<HomeStateNotifier>().initState();
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
        child: _getBody(context),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    final state = context.select(
      (HomeState state) => state,
    );
    return ListView(
      children: [
        _getCarousel(context, state.carouselList),
        const Gap(30),
        _getScrollLabel(L10n.of(context)!.popularListTitle),
        const Gap(20),
        _getScrollMovies(context, state.popularList),
        const Gap(25),
        _getScrollLabel(L10n.of(context)!.newListTitle),
        const Gap(20),
        _getScrollMovies(context, state.movieList),
        const Gap(100),
      ],
    );
  }

  Widget _getCarousel(BuildContext context, List<MovieResult>? movieList) {
    return movieList == null
        ? const SizedBox.shrink()
        : CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 1,
              viewportFraction: 0.93,
              autoPlay: true,
            ),
            items: List.generate(movieList.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  child: CachedNetworkImage(
                    imageUrl: movieList[index].posterPath != null
                        ? '$resourceUrl${movieList[index].posterPath}'
                        : Assets.images.noimage.path,
                    imageBuilder: (context, imageProvider) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      );
                    },
                    errorWidget: (context, url, dynamic error) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: Assets.images.noimage.image().image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      );
                    },
                  ),
                  onTap: () {
                    context.push(
                      MovieDetailPage.getRouteNameWithId(
                        movieList[index].id.toString(),
                      ),
                    );
                  },
                ),
              );
            }),
          );
  }

  Widget _getScrollLabel(String label) {
    final str = label.split(' ');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        child: Row(
          children: [
            Text(
              str[0],
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            const Gap(5),
            Text(
              str[1],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(8),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
              size: 16,
            )
          ],
        ),
        onTap: () {
          // TODO(2ero20ne): Go To List.
        },
      ),
    );
  }

  Widget _getScrollMovies(BuildContext context, List<MovieResult>? movieList) {
    return movieList == null
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getLoadingWidget(),
                getLoadingWidget(),
                getLoadingWidget(),
                getLoadingWidget(),
              ],
            ),
          )
        : movieList.isEmpty
            ? Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  L10n.of(context)!.noMovie,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(movieList.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 15 : 10,
                          right: index == (movieList.length - 1) ? 15 : 0),
                      child: GestureDetector(
                        child: CachedNetworkImage(
                          imageUrl: movieList[index].posterPath != null
                              ? '$resourceUrl${movieList[index].posterPath}'
                              : Assets.images.noimage.path,
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
                              movieList[index].id.toString(),
                            ),
                          );
                        },
                      ),
                    );
                  }),
                ),
              );
  }

  Widget getLoadingWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FadeShimmer(
        height: 180,
        width: 125,
        radius: 15,
        highlightColor: Colors.grey[800],
        baseColor: Colors.grey[900],
        fadeTheme: FadeTheme.dark,
      ),
    );
  }
}
