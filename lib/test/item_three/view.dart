import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../adapter/state.dart';


Widget buildView(
    ItemState state,
    Dispatch dispatch,
    ViewService viewService,
    ) {

  return Container(
    child: Text(state.type, style: TextStyle(color: Colors.blue, fontSize: 22),),
  );

}