import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageWrapper extends ConsumerStatefulWidget {
  final Widget child;
  final double width;
  const PageWrapper({required this.child, this.width = 1280});
  _PageWrapper createState() => _PageWrapper();
}

class _PageWrapper extends ConsumerState<PageWrapper> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width,
        child: widget.child,
      ),
    );
  }
}
