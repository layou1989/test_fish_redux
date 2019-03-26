import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemThreeComponent extends Component<ItemState> {
  ItemThreeComponent()
      : super(
    key: (state) => ValueKey(state.type),
    view: buildView,
  );
}