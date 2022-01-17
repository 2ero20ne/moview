import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:moview/controllers/favorite/favorite_controller.dart';
import 'package:moview/controllers/favorite/favorite_state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  static const routeName = '/favorite';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<FavoriteStateNotifier, FavoriteState>(
      create: (BuildContext context) => FavoriteStateNotifier(),
      child: const _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favorite'),
      ),
    );
  }
}
