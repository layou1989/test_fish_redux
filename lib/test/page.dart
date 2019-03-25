import 'package:fish_redux/fish_redux.dart';
import '../test/adapter/adapter.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';


class ListPage extends Page<ListState, Map<String, dynamic>> {
  ListPage()
      : super(
    initState: initState,
    view: buildView,
    effect: buildEffect(),
    dependencies: Dependencies<ListState>(
      adapter: TestListAdapter(),
    ),
  );
}