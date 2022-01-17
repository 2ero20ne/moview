import 'package:moview/controllers/root/root_state.dart';
import 'package:state_notifier/state_notifier.dart';

class RootStateNotifier extends StateNotifier<RootState> {
  RootStateNotifier() : super(const RootState());

  void selectIndex(int index) {
    state = state.copyWith(
      selectedIndex: index,
    );
  }
}
