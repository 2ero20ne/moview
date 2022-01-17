import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moview/controllers/root/root_controller.dart';
import 'package:moview/controllers/root/root_state.dart';
import 'package:moview/gen/assets.gen.dart';
import 'package:moview/pages/favorite_page.dart';
import 'package:moview/pages/home_page.dart';
import 'package:moview/pages/search_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select<RootState, int>((state) => state.selectedIndex);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: GestureDetector(
        child: Scaffold(
          appBar: getAppBar(),
          body: getBody(selectedIndex),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: getFloatingActionButton(context, selectedIndex),
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }

  PreferredSizeWidget getAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: SafeArea(
        child: Center(
          child: Assets.images.logo.image(
            height: 25,
          ),
        ),
      ),
    );
  }

  Widget getBody(int selectedIndex) {
    return IndexedStack(
      index: selectedIndex,
      children: const [
        HomePage(),
        SearchPage(),
        FavoritePage(),
      ],
    );
  }

  Widget getFloatingActionButton(BuildContext context, int selectedIndex) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        FocusScope.of(context).unfocus();
        context.read<RootStateNotifier>().selectIndex(index);
      },
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: const [
        NavigationDestination(
          icon: Icon(LineIcons.home),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(LineIcons.search),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(LineIcons.heart),
          label: '',
        ),
      ],
    );
  }
}
