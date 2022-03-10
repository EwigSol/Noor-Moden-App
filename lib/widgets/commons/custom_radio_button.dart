import 'package:flutter/material.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  late bool buttonshape;
  final String text;
  final ValueChanged<T?> onChanged;

  CustomRadioButton({
    required this.value,
    required this.groupValue,
    required this.buttonshape,
    required this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;
    // final bool isSelected1 = value == groupValue;

    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        shape: buttonshape == true
            ? CircleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
              )
            : Border.all(
                color: Colors.black38,
              ),
        color: isSelected ? Color.fromARGB(255, 65, 23, 182) : Colors.white,
      ),
      child: Center(
        child: Text(
          "",
          // value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.cyan,
            fontSize: 12.0,
            // fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  Widget _buildText(context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLabel(),
              const SizedBox(width: 10),
              _buildText(context),
            ],
          ),
        ),
      ),
    );
  }
}
