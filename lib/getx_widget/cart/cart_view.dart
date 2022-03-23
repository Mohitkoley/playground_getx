import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_widget/cart/cart_controller.dart';
import 'package:playground/getx_widget/cart/item/item_model.dart';
import 'package:playground/getx_widget/cart/item/item_view.dart';

class CartView extends GetView<CartController> {
  final itemList = Item.generateItems();
  CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: itemList.map((item) {
              return ItemView(item: item);
            }).toList(),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Quantity"),
                    Obx(() => Text('${controller.totalItem}',
                        style: TextStyle(
                            color: Colors.orange[800], fontSize: 24))),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange[800],
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Buy Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
