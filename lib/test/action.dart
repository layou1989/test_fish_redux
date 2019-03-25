import 'package:fish_redux/fish_redux.dart';

enum ListAction {onLoadMore}

class ListActionCreator {


  static Action onLoadMoreAction({top = true}) {
    return Action(ListAction.onLoadMore, payload: top);
  }

}