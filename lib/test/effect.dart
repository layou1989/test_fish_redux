import 'package:fish_redux/fish_redux.dart';
import '../test/adapter/action.dart';
import '../test/adapter/state.dart';

import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _init,
    ListAction.onLoadMore: _onLoadMore,
  });
}

///初始化
void _init(Action action, Context<ListState> ctx) {
  ctx.dispatch(ListActionCreator.onLoadMoreAction());
}

void _onLoadMore(Action action, Context<ListState> ctx) {
  if(ctx.state.items == null || ctx.state.items.length % 6 == 0) {
    ctx.dispatch(ListAdapterActionCreator.addAction([ItemState(type: "1"), ItemState(type: "2"), ItemState(type: "3")], action.payload));
   } else {
    ctx.dispatch(ListAdapterActionCreator.addAction([ItemState(type: "3"), ItemState(type: "2"), ItemState(type: "1")], action.payload));
  }
}


