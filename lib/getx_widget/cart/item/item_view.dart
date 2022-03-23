import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_widget/cart/cart_controller.dart';
import 'package:playground/getx_widget/cart/item/item_controller.dart';
import 'package:playground/getx_widget/cart/item/item_model.dart';

class ItemView extends GetWidget<ItemController> {
  final shoppingCartController = Get.find<CartController>();
  final Item item;
  ItemView({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(item.imgUrl, width: 60, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Size ${item.size}',
                    style: const TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Text("\$${item.price}",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(child: Container()),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.decrement();
                            if (controller.quantity.value < 0) {
                              controller.reset();
                            } else {
                              shoppingCartController.decrement();
                            }
                          },
                          child: Text(
                            "-",
                            style:
                                TextStyle(fontSize: 10, color: Colors.orange),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Obx(() => Text('${controller.quantity}',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                        const SizedBox(width: 5),
                        InkWell(
                            onTap: () {
                              controller.increment();
                              shoppingCartController.increment();
                            },
                            child: Text('+',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.orange))),
                      ]),
                )
              ],
            )
          ],
        ));
  }
}
