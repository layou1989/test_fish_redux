import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import 'action.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(<Object, Reducer<ListState>>{
    ListAdapterAction.add: _add,
  });
}

///往列表中增加数据
ListState _add(ListState state, Action action) {
  final List<ItemState> _states = action.payload[0];
  final bool _top = action.payload[1];

  final ListState _newState = state.clone();
  if(_newState.items == null) {
    _newState.items = [];
  }

  if(_top) {
    _newState.items.insertAll(0, _states);
  } else {
    _newState.items.addAll(_states);
  }
  return _newState;
}
