import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

int? selectedValueItems;
String? selectedValueSortBy;
List<int> items = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
];

List<String> sortBy = [
  "Default",
  "New1",
  "New2",
  "New3",
  "New4",
  "New5",
];

class HeaderHomeWidget extends StatefulWidget {
  const HeaderHomeWidget({Key? key}) : super(key: key);

  @override
  State<HeaderHomeWidget> createState() => _HeaderHomeWidgetState();
}

class _HeaderHomeWidgetState extends State<HeaderHomeWidget> {
  String? _groupValue;
  _valueChangedHandler(value) {
    setState(() => _groupValue = value!);
  }

  Widget _outerContainer(numberofColumns, value) {
    final bool isSelected = value == _groupValue;

    return Container(
      width: numberofColumns == 4 ? 35 : 25,
      height: 20,
      margin: EdgeInsets.only(right: 2.0),
      decoration: ShapeDecoration(
        shape: Border.all(
          color: (isSelected
              ? Color.fromARGB(255, 65, 23, 182)
              : Colors.grey[500])!,
        ),
      ),
      child: numberofColumns == 2
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2.0),
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                        color: (isSelected
                            ? Color.fromARGB(255, 65, 23, 182)
                            : Colors.grey[500])!,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2.0),
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                        color: (isSelected
                            ? Color.fromARGB(255, 65, 23, 182)
                            : Colors.grey[500])!,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2.0),
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                        color: (isSelected
                            ? Color.fromARGB(255, 65, 23, 182)
                            : Colors.grey[500])!,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2.0),
                      height: 4,
                      width: 3,
                      decoration: BoxDecoration(
                        color: (isSelected
                            ? Color.fromARGB(255, 65, 23, 182)
                            : Colors.grey[500])!,
                      ),
                    ),
                  ],
                ),
              ],
            )
          : numberofColumns == 3
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 1.0, right: 1.0, bottom: 1.0, top: 2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 4,
                          width: 3,
                          decoration: BoxDecoration(
                            color: (isSelected
                                ? Color.fromARGB(255, 65, 23, 182)
                                : Colors.grey[500])!,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: MediaQuery.of(context).size.height * 0.09,
        margin: EdgeInsets.only(left: 20, right: 20),
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text("VIEW"),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                      onTap: () => _valueChangedHandler('1'),
                      child: _outerContainer(2, '1')),
                  InkWell(
                      onTap: () => _valueChangedHandler('2'),
                      child: _outerContainer(3, '2')),
                  InkWell(
                      onTap: () => _valueChangedHandler('3'),
                      child: _outerContainer(4, '3')),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text("ITEMS PER PAGE"),
                  SizedBox(
                    width: 5.0,
                  ),
                  DropdownButton2(
                    items: items
                        .map((items) => DropdownMenuItem<int>(
                              value: items,
                              child: Text(
                                items.toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValueItems,
                    onChanged: (value) {
                      setState(() {
                        selectedValueItems = value as int;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                  Text("Sorted By"),
                  DropdownButton2(
                    items: sortBy
                        .map((items) => DropdownMenuItem<String>(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValueSortBy,
                    onChanged: (value) {
                      setState(() {
                        selectedValueSortBy = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
