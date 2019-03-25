import 'package:fish_redux/fish_redux.dart';

import '../item_one/component.dart';
import '../item_three/component.dart';
import '../item_two/component.dart';
import '../state.dart';
import 'reducer.dart';
import 'state.dart';

class TestListAdapter extends DynamicFlowAdapter<ListState> {
  TestListAdapter()
      : super(
          pool: <String, Component<Object>>{
            'one': ItemOneComponent(),
            'two': ItemTwoComponent(),
            'three': ItemThreeComponent(),
          },
          connector: _ListConnector(),
          reducer: buildReducer(),
        );
}

class _ListConnector implements Connector<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    if (state.items?.isNotEmpty == true) {
      return state.items.map<ItemBean>((ItemState data) {
        if ("1" == data.type) {
          return ItemBean('one', data);
        } else if ("2" == data.type) {
          return ItemBean('two', data);
        } else {
          return ItemBean('three', data);
        }
      }).toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ListState state, List<ItemBean> beans) {
    if (beans?.isNotEmpty == true) {
      state.items = List<ItemState>.from(beans
          .map<ItemState>((ItemBean bean) => bean.data)
          .toList());
    } else {
      state.items = <ItemState>[];
    }
  }
}
