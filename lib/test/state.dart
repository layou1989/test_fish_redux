import 'package:fish_redux/fish_redux.dart';
import '../test/adapter/state.dart';



class ListState implements Cloneable<ListState>  {

  List<ItemState> items;

  @override
  ListState clone() {
    return ListState()
      ..items = items
    ;
  }

  ListState({this.items});

  @override
  String toString() {
    return 'ListState{items: $items}';
  }

}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}