import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/shared/mixins/after_layout_mixin.dart';

import 'scroll_thumb.dart';

class CustomScrollbarWidget extends StatefulWidget {
  final Widget child;
  final double heightScrollThumb;
  final ScrollController controller;
  final String customText;
  Widget thumb;

  CustomScrollbarWidget({
    @required this.child,
    @required this.controller,
    this.heightScrollThumb = 50,
    this.customText = "",
    this.thumb,
  }) {
    thumb ??= ScrollThumb(height: heightScrollThumb);
  }

  @override
  _CustomScrollbarWidgetState createState() =>
      new _CustomScrollbarWidgetState();
}

class _CustomScrollbarWidgetState extends State<CustomScrollbarWidget>
    with AfterLayoutMixin {
  double barMaxScrollExtent = 0;
  bool scrollLoaded = false;

  double get barMinScrollExtent => 0;

  double get viewMaxScrollExtent =>
      scrollLoaded ? widget.controller.position.maxScrollExtent : 0;

  double get viewMinScrollExtent =>
      scrollLoaded ? widget.controller.position.minScrollExtent : 0;

  double get viewScrollValue => scrollLoaded ? widget.controller.offset : 0;

  double get dragPos =>
      barMaxScrollExtent * viewScrollValue / viewMaxScrollExtent;

  double get viewPos => dragPos * viewMaxScrollExtent / barMaxScrollExtent;

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    var index =
        details.globalPosition.dy / barMaxScrollExtent * viewMaxScrollExtent;
    index -= widget.heightScrollThumb * 6;
    if (index != widget.controller.offset &&
        index <= widget.controller.position.maxScrollExtent &&
        index >= 0) {
      widget.controller.jumpTo(index);
    }
  }

  @override
  void afterLayout(Duration duration) {
    barMaxScrollExtent = context.size.height - widget.heightScrollThumb;
    scrollLoaded = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _onVerticalDragUpdate,
      child: AnimatedBuilder(
        animation: widget.controller,
        child: widget.thumb,
        builder: (context, child) {
          return Stack(
            children: <Widget>[
              widget.child,
              Positioned(
                right: 0,
                top: dragPos,
                child: child,
              ),
            ],
          );
        },
      ),
    );
  }
}
