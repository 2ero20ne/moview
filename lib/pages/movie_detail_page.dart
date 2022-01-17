import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moview/controllers/movie_detail/movie_detail_controller.dart';
import 'package:moview/controllers/movie_detail/movie_detail_state.dart';

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
      create: (BuildContext context) => MovieDetailStateNotifier(),
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
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/I/612oB7D99ZL._AC_SY500_.jpg'),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      context.pop();
                    }),
                IconButton(
                    icon: const Icon(LineIcons.heart, color: Colors.white),
                    onPressed: () {}),
              ],
            ),
          ),
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
                          const Text(
                            '2021',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const Gap(10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 1,
                                horizontal: 3,
                              ),
                              child: Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            '2h 15m',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const Gap(15),
                      const Text(
                        'ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。ここに説明が入ります。',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white),
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
                      const Gap(20),
                    ],
                  ),
                ),
                _getScrollMovies(context),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getScrollMovies(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? 15 : 10, right: index == (4 - 1) ? 15 : 0),
            child: GestureDetector(
              child: Container(
                height: 180,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://m.media-amazon.com/images/I/612oB7D99ZL._AC_SY500_.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                context.push(
                  MovieDetailPage.getRouteNameWithId('1'),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
