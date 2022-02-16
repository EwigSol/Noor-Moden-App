import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


List<String> Images=[
  "assets/categories_images/micon.png",
  "assets/categories_images/micon2.png",
  "assets/categories_images/micon3.png",
];
List<String> productImages=List.from(Images.map((e) => e));

List<String> titles=[
  "EVENING DRESSES",
  "BIG SIZE",
  "SALE %"
];





extension HoverExtension on Widget {
  Widget get translateOnHover {
    return kIsWeb ? TranslateOnHover(child: this) : ThisContainer(child: this);
  }
}

class ThisContainer extends StatelessWidget {
  ThisContainer({this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  TranslateOnHover({required this.child});

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  double scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 200),
        tween: Tween<double>(begin: 1.0, end: scale),
        builder: (BuildContext context, double value, _) {
          return Transform.scale(scale: value, child: widget.child);
        },
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      if (hover)
        scale = 1.03;
      else
        scale = 1.0;
    });
  }
}