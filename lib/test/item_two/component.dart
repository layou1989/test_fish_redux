import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemTwoComponent extends Component<ItemState> {
  ItemTwoComponent()
      : super(
    key: (state) => ValueKey(state.type),
    view: buildView,
  );
}