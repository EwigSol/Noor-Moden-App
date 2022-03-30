import 'package:flutter/material.dart';
import 'package:noor_moden/constants.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        color: Colors.white,
        // full screen column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text for status showing
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(" Home > SHOPPING CART "),
            ),
            // page status showing text
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Cart"),
                  Text("Continue Shopping >"),
                ],
              ),
            ),
            // a Row for Two columns
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column to list of products which were add in cart
                Container(
                  width: MediaQuery.of(context).size.width * 0.655,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.655,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                          color: Color.fromARGB(255, 250, 250, 250),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 20.0, bottom: 8.0),
                          child: Text("Products"),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.655,
                        color: Colors.black54,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 12.0,
                                        bottom: 20.0,
                                        right: 12.0),
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    color: Colors.amber[100],
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/dress1.jpg",
                                          fit: BoxFit.fill,
                                          // height: 40,
                                          // width: 25,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Adorable Evening Dress"),
                                              Text("Dark Peach/L"),
                                              Text("Noor Moden"),
                                              Text("42.04"),
                                              Text("Quantity"),
                                              Container(
                                                // color: Colors.blue,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // button for increment or decrement number of products in cart
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.blueGrey,
                                                            width: 1),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8.0),
                                                        child: Row(
                                                          children: [
                                                            Text("-"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("1"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("+"),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    // button for update cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "Update Cart",
                                                        textColor: Colors.white,
                                                        buttonColor:
                                                            Colors.black),
                                                    // button for remove product from cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "X Remove ",
                                                        textColor:
                                                            Colors.black38,
                                                        buttonColor:
                                                            Colors.grey[300]),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 12.0,
                                        bottom: 20.0,
                                        right: 12.0),
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    color: Colors.amber[100],
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/dress1.jpg",
                                          fit: BoxFit.fill,
                                          // height: 40,
                                          // width: 25,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Adorable Evening Dress"),
                                              Text("Dark Peach/L"),
                                              Text("Noor Moden"),
                                              Text("42.04"),
                                              Text("Quantity"),
                                              Container(
                                                // color: Colors.blue,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // button for increment or decrement number of products in cart
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.blueGrey,
                                                            width: 1),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8.0),
                                                        child: Row(
                                                          children: [
                                                            Text("-"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("1"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("+"),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    // button for update cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "Update Cart",
                                                        textColor: Colors.white,
                                                        buttonColor:
                                                            Colors.black),
                                                    // button for remove product from cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "X Remove ",
                                                        textColor:
                                                            Colors.black38,
                                                        buttonColor:
                                                            Colors.grey[300]),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 12.0,
                                        bottom: 20.0,
                                        right: 12.0),
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    color: Colors.amber[100],
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/dress1.jpg",
                                          fit: BoxFit.fill,
                                          // height: 40,
                                          // width: 25,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Adorable Evening Dress"),
                                              Text("Dark Peach/L"),
                                              Text("Noor Moden"),
                                              Text("42.04"),
                                              Text("Quantity"),
                                              Container(
                                                // color: Colors.blue,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // button for increment or decrement number of products in cart
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.blueGrey,
                                                            width: 1),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8.0),
                                                        child: Row(
                                                          children: [
                                                            Text("-"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("1"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("+"),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    // button for update cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "Update Cart",
                                                        textColor: Colors.white,
                                                        buttonColor:
                                                            Colors.black),
                                                    // button for remove product from cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "X Remove ",
                                                        textColor:
                                                            Colors.black38,
                                                        buttonColor:
                                                            Colors.grey[300]),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 12.0,
                                        bottom: 20.0,
                                        right: 12.0),
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    color: Colors.amber[100],
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/dress1.jpg",
                                          fit: BoxFit.fill,
                                          // height: 40,
                                          // width: 25,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Adorable Evening Dress"),
                                              Text("Dark Peach/L"),
                                              Text("Noor Moden"),
                                              Text("42.04"),
                                              Text("Quantity"),
                                              Container(
                                                // color: Colors.blue,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // button for increment or decrement number of products in cart
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.blueGrey,
                                                            width: 1),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8.0),
                                                        child: Row(
                                                          children: [
                                                            Text("-"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("1"),
                                                            SizedBox(
                                                              // width: 1,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  VerticalDivider(
                                                                color: Colors
                                                                    .blueGrey,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Text("+"),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    // button for update cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "Update Cart",
                                                        textColor: Colors.white,
                                                        buttonColor:
                                                            Colors.black),
                                                    // button for remove product from cart
                                                    CustomButton(
                                                        onpress: onpress,
                                                        text: "X Remove ",
                                                        textColor:
                                                            Colors.black38,
                                                        buttonColor:
                                                            Colors.grey[300]),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                // right Column which shows ORDER SUMMARY.
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                          color: Color.fromARGB(255, 250, 250, 250),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 20.0, bottom: 8.0),
                          child: Text("ORDER SUMMARY"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SubTotal"),
                          Text("\$41.60"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax"),
                          Text("\$6.60"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Service Charges"),
                          Text("\$4.60"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total"),
                          Text("\$41.60"),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onpress() {}
}
