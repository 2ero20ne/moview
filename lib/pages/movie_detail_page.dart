import 'package:cached_network_image/cached_network_image.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moview/controllers/movie_detail/movie_detail_controller.dart';
import 'package:moview/controllers/movie_detail/movie_detail_state.dart';
import 'package:moview/gen/assets.gen.dart';
import 'package:moview/models/common/movie_result.dart';
import 'package:moview/utils/constant.dart';
import 'package:provider/provider.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key, required this.id}) : super(key: key);

  static const routeName = '/movie/:id';
  final String id;

  static String getRouteNameWithId(String id) {
    return routeName.replaceAll(':id', id);
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MovieDetailStateNotifier, MovieDetailState>(
      create: (_) => MovieDetailStateNotifier()
        ..context = context
        ..movieId = id,
      child: const _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(context, size),
    );
  }

  Widget getBody(BuildContext context, Size size) {
    final state = context.select((MovieDetailState state) => state);
    return state.movie == null
        ? Center(
            child: LoadingAnimationWidget.fourRotatingDots(
              color: Colors.red,
              size: 50,
            ),
          )
        : Column(
            children: [
              CachedNetworkImage(
                imageUrl: state.movie!.posterPath != null
                    ? '$resourceUrl${state.movie!.posterPath}'
                    : '',
                imageBuilder: (context, imageProvider) {
                  return Container(
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                          IconButton(
                            icon: state.isFavorite
                                ? const Icon(
                                    LineIcons.heartAlt,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    LineIcons.heart,
                                    color: Colors.white,
                                  ),
                            onPressed: () => context
                                .read<MovieDetailStateNotifier>()
                                .toggleFavorite(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, dynamic error) {
                  return Container(
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                        image: Assets.images.noimage.image().image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                          IconButton(
                            icon: state.isFavorite
                                ? const Icon(
                                    LineIcons.heartAlt,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    LineIcons.heart,
                                    color: Colors.white,
                                  ),
                            onPressed: () => context
                                .read<MovieDetailStateNotifier>()
                                .toggleFavorite(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  state.movie!.releaseDate.split('-').first,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 1,
                                      horizontal: 3,
                                    ),
                                    child: Text(
                                      state.movie!.genres
                                          .map((genre) => genre.name)
                                          .join('/'),
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                LineIcon(
                                  LineIcons.voteYea,
                                  size: 15,
                                ),
                                const Gap(5),
                                Text(
                                  '${state.movie!.voteCount}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    state.movie!.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            state.movie!.overview == null
                                ? const SizedBox.shrink()
                                : Text(
                                    state.movie!.overview!,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                            const Gap(10),
                            const Divider(color: Colors.white),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  L10n.of(context)!.relatedTitle,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            // const Gap(20),
                          ],
                        ),
                      ),
                      _getScrollMovies(context, state.similarList),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
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
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      L10n.of(context)!.noMovie,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
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
