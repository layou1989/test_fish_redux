import 'package:fish_redux/fish_redux.dart';


import '../adapter/state.dart';
import 'view.dart';


class ItemTwoComponent extends Component<ItemState> {
  ItemTwoComponent()
      : super(
    view: buildView,
  );
}