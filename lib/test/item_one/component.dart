import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemOneComponent extends Component<ItemState> {
  ItemOneComponent()
      : super(
    key: (state) => ValueKey(state.type),
    view: buildView,
  );
}