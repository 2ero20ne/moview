import 'package:moview/controllers/favorite/favorite_state.dart';
import 'package:state_notifier/state_notifier.dart';

class FavoriteStateNotifier extends StateNotifier<FavoriteState> {
  FavoriteStateNotifier() : super(const FavoriteState());
}
