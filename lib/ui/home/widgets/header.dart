import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerStatefulWidget {
  final Widget leading;
  final List<Widget> children;
  const Header({
    required this.leading,
    required this.children,
  });
  _Header createState() => _Header();
}

class _Header extends ConsumerState<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.leading,
          Container(
            child: Row(
              children: widget.children,
            ),
          )
        ],
      ),
    );
  }
}
