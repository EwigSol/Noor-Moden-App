import 'package:flutter/material.dart';
class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final double val;
  final Duration? duraton;
  final bool isProduct;
   final bool isDrawer;
  const OnHover({Key? key, required  this.builder,required this.val, this.duraton, required this.isProduct,required this.isDrawer}) : super(key: key);

  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.translationValues(0, widget.val, 0);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (val) => onEntered(true),
      onExit: (val) => onEntered(false),
      child: AnimatedContainer(
        padding: widget.isDrawer?EdgeInsets.all(2.0):widget.isProduct?EdgeInsets.symmetric(vertical:isHovered?6.0:14.0):EdgeInsets.all(isHovered?8.0:14.0),
        // duration: widget.duraton == null
        //     ? Duration(milliseconds: 1400)
        //     : widget.duraton!,
        duration: Duration(milliseconds: 800),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

// class OnHover extends StatefulWidget {
//   final Widget Function(bool isHovered) builder;
//   final double val;
//   final Duration? duraton;
//   const OnHover(
//       {Key? key, required this.builder, required this.val, this.duraton}) : super(key: key);
//   @override
//   OnHoverStatecreateState() => _OnHoverState();
// }
//
// class _OnHoverState extends State<OnHover> {
//   bool isHovered = false;
//   @override
//   Widget build(BuildContext context) {
//     final hovered = Matrix4.translationValues(0, widget.val, 0);
//     final transform = isHovered ? hovered : Matrix4.identity();
//     return MouseRegion(
//       onEnter: (val) => onEntered(true),
//       onExit: (val) => onEntered(false),
//       child: AnimatedContainer(
//         duration: widget.duraton == null
//             ? Duration(milliseconds: 300)
//             : widget.duraton!,
//         transform: transform,
//         child: widget.builder(isHovered),
//       ),
//     );
//   }
//
//   void onEntered(bool isHovered) {
//     setState(() {
//       this.isHovered = isHovered;
//     });
//   }
// }
