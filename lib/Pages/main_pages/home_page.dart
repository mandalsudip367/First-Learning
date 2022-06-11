// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/model/catalog.dart';
import 'package:flutter_application_1/utilits/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedata = jsonDecode(catalogJson);
    var productsData = decodedata["products"];
    CatalogModels.item =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModels.item[0]);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cPage),
        child: Icon(CupertinoIcons.cart),
        backgroundColor: Theme.of(context).buttonColor,
      ),
      backgroundColor: context.cardColor,
      body: Container(
        padding: Vx.m20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModels.item != null && CatalogModels.item.isNotEmpty)
              CatalogList().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: context.theme.canvasColor,
        title: Text("Home"),
      ),
      // body: Padding(
      //     padding: EdgeInsets.all(16),
      //     child: (CatalogModels.item != null && CatalogModels.item.isNotEmpty)
      //         ? GridView.builder(
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 2,
      //                 mainAxisSpacing: 20,
      //                 crossAxisSpacing: 20),
      //             itemBuilder: (context, index) {
      //               final item = CatalogModels.item[index];
      //               return Card(
      //                   clipBehavior: Clip.antiAlias,
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: GridTile(
      //                     child: Image.network(item.image),
      //                     header: Container(
      //                         decoration: BoxDecoration(color: Colors.blue),
      //                         child: Text(
      //                           item.name,
      //                           style: TextStyle(color: Colors.white),
      //                         )),
      //                     footer: Container(
      //                         decoration: BoxDecoration(color: Colors.yellow),
      //                         child: Text(
      //                           "\$${item.price}",
      //                           style: TextStyle(color: Colors.red),
      //                         )),
      //                   ));
      //             },
      //             itemCount: CatalogModels.item.length,
      //           )
      //         //  ListView.builder(
      //         //     itemCount: CatalogModels.item.length,
      //         //     itemBuilder: (context, index) =>
      //         //         ItemWidget(item: CatalogModels.item[index]),
      //         //   )
      //         : Center(
      //             child: CircularProgressIndicator(),
      //           )),
      drawer: MyDrawer(),
    );
  }
}
