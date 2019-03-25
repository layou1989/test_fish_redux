import 'package:fish_redux/fish_redux.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemOneComponent extends Component<ItemState> {
  ItemOneComponent()
      : super(
    view: buildView,
  );
}