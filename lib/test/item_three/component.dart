import 'package:fish_redux/fish_redux.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemThreeComponent extends Component<ItemState> {
  ItemThreeComponent()
      : super(
    view: buildView,
  );
}