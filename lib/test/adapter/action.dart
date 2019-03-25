import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

enum ListAdapterAction {add}

class ListAdapterActionCreator {

  static Action addAction(List<ItemState> states, top) {
    return Action(ListAdapterAction.add, payload: [states, top]);
  }

}