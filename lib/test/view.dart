import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import '../test/action.dart';

import 'state.dart';

Widget buildView(
    ListState state,
    Dispatch dispatch,
    ViewService viewService,
    ) {
    final ListAdapter adapter = viewService.buildAdapter();
    return Scaffold(
      body:ListView.builder(
        itemCount: adapter.itemCount,
        itemBuilder: adapter.itemBuilder,
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () => dispatch(ListActionCreator.onLoadMoreAction()),
        tooltip: '顶部添加',
        child: const Icon(Icons.add),
      ),
    );
}