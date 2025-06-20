import 'package:flutter/material.dart';

import '../flutter_list_view.dart';
import 'flutter_list_view_element.dart';
import 'flutter_list_view_render.dart';

class FlutterSliverList extends SliverWithKeepAliveWidget {
  /// Creates a sliver that places box children in a linear array.
  const FlutterSliverList({
    Key? key,
    required this.delegate,
    this.controller,
    this.anchor = 0.0,
  }) : super(key: key);

  final SliverChildDelegate delegate;
  final FlutterSliverListController? controller;
  final double anchor;

  @override
  FlutterListViewElement createElement() => FlutterListViewElement(this);

  @override
  FlutterListViewRender createRenderObject(BuildContext context) {
    final FlutterListViewElement element = context as FlutterListViewElement;

    return FlutterListViewRender(childManager: element, anchor: anchor);
  }

  @override
  void updateRenderObject(
      BuildContext context, FlutterListViewRender renderObject) {
    renderObject.anchor = anchor;
  }
}
