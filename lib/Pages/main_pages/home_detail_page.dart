import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class hDpage extends StatelessWidget {
  final Item catalog;
  const hDpage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.xl.bold.color(Vx.violet900).make(),
          ElevatedButton(
            onPressed: () {},
            child: "Add To Cart".text.color(Vx.black).make(),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shape: MaterialStateProperty.all(StadiumBorder())),
          ).wh(110, 40)
        ],
      ).backgroundColor(Colors.cyan),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Vx.gray100,
      body: SafeArea(
          child: Column(children: [
        Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image))
            .h32(context),
        Expanded(
          child: VxArc(
            height: 30,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: Vx.cyan500,
              // width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl3.color(Vx.indigo100).bold.make(),
                  catalog.desc.text
                      .color(Vx.white)
                      .textStyle(context.captionStyle)
                      .xl
                      .make(),
                  10.heightBox,
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate"
                      .text
                      .medium
                      .extraBlack
                      .textStyle(context.captionStyle)
                      .make(),
                ],
              ).p64(),
            ),
          ),
        )
      ])),
    );
  }
}
