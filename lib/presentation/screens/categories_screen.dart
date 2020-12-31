import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/widgets/category_card.dart';
import 'package:drop/presentation/widgets/drop_appbar.dart';
import 'package:drop/presentation/widgets/product_card.dart';
import 'package:drop/presentation/widgets/product_deal_card.dart';
import 'package:drop/presentation/widgets/section_heading_2.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding:
              EdgeInsets.only(left: Sizes.PADDING_24, top: Sizes.PADDING_32),
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
              child: DropAppBar(
                onLeadingTap: () {},
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.CATEGORIES,
              title2: StringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: assignHeight(context: context, fraction: 0.3),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.categoryItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    title: Data.categoryItems[index].title,
                    subtitle: Data.categoryItems[index].subtitle,
                    subtitleColor: Data.categoryItems[index].subtitleColor,
                    imagePath: Data.categoryItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.TOP_DEALS,
              title2: StringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: assignHeight(context: context, fraction: 0.3),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.productDealItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: Data.productDealItems[index].title,
                    subtitle: Data.productDealItems[index].subtitle,
                    price: Data.productDealItems[index].price,
                    imagePath: Data.productDealItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.NEWEST,
              title2: StringConst.SEE_ALL,
            ),
            Container(
              height: assignHeight(context: context, fraction: 0.3),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.productItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    title: Data.productItems[index].title,
                    price: Data.productItems[index].price,
                    imagePath: Data.productItems[index].imagePath,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}