import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/main_pages/home_detail_page.dart';
import 'package:flutter_application_1/model/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModels.item.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModels.item[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => hDpage(
                          catalog: catalog,
                        ))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
