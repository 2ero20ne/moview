import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:moview/controllers/home/home_controller.dart';
import 'package:moview/controllers/home/home_state.dart';
import 'package:moview/pages/movie_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeStateNotifier, HomeState>(
      create: (BuildContext context) => HomeStateNotifier(),
      child: const _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return ListView(
      children: [
        _getCarousel(context),
        const Gap(30),
        _getScrollLabel(L10n.of(context)!.popularListTitle),
        const Gap(20),
        _getScrollMovies(context),
        const Gap(25),
        _getScrollLabel(L10n.of(context)!.newListTitle),
        const Gap(20),
        _getScrollMovies(context),
        const Gap(100),
      ],
    );
  }

  Widget _getCarousel(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        aspectRatio: 2,
        viewportFraction: 0.93,
        autoPlay: true,
      ),
      items: List.generate(4, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: NetworkImage(
                      'https://m.media-amazon.com/images/I/612oB7D99ZL._AC_SY500_.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _getScrollLabel(String label) {
    final str = label.split(' ');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
