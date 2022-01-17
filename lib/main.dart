import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:moview/app.dart';
import 'package:moview/controllers/root/root_controller.dart';
import 'package:moview/controllers/root/root_state.dart';
import 'package:moview/pages/root_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        StateNotifierProvider<RootStateNotifier, RootState>(
          create: (_) => RootStateNotifier(),
          child: const RootPage(),
        ),
      ],
      child: App(),
    ),
  );
}
