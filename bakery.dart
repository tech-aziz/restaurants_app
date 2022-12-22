import 'dart:developer';

import 'package:active_ecommerce_flutter/custom/device_info.dart';
import 'package:active_ecommerce_flutter/screens/recipe_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../custom/box_decorations.dart';
import '../custom/text_styles.dart';
import '../helpers/api_call_helper.dart';
import '../helpers/shimmer_helper.dart';
import '../helpers/spacing_helper.dart';
import '../my_theme.dart';
import '../repositories/product_repository.dart';
import '../ui_elements/list_line_product_card.dart';
import '../ui_elements/product_card.dart';

class Bakery extends StatefulWidget {
  const Bakery({Key key}) : super(key: key);

  @override
  State<Bakery> createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
  bool listView = false;
  ScrollController _bakeryScrollController = ScrollController();
  ScrollController _scrollController;

  List<dynamic> _productListByCategory = [];
  bool _isProductInitial = true;
  int _productPage = 1;
  int _totalProductData = 0;
  bool _showProductLoadingContainer = false;
  var productResponse;

  int categoryId;
  @override
  void initState() {
    // TODO: implement initState
    fetchApi();
    setState(() {
      bakeryCategoryDataRXobj.getBakeryCategoryData.first.then((value) {
        List data = value['data'];
        categoryId = data[0]['id'];
        _isProductInitial = false;
        if (categoryId != null) {
          fetchProductsByCategory();
        }
      });
    });
    init();

    super.initState();
  }

  fetchApi() async {
    await bakeryCategoryDataRXobj.fetchBakeryCategoryData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _bakeryScrollController.dispose();
    super.dispose();
  }

  init() {
    // fetchProductsByCategory();
    _bakeryScrollController.addListener(() {
      if (_bakeryScrollController.position.pixels ==
          _bakeryScrollController.position.maxScrollExtent) {
        setState(() {
          _productPage++;
        });
        _showProductLoadingContainer = true;
        fetchProductsByCategory();
      }
    });
  }

  fetchProductsByCategory() async {
    productResponse = await ProductRepository()
        .getBakeryProducts(page: _productPage, category: categoryId.toString());
    setState(() {
      _totalProductData = productResponse.meta.total;
      _productListByCategory.addAll(productResponse.products);
      _isProductInitial = false;
      _showProductLoadingContainer = false;
      log('CategoryID: ' + categoryId.toString());
    });
  }

  resetProductList() {
    _productListByCategory.clear();
    _isProductInitial = true;
    _totalProductData = 0;
    _productPage = 1;
    _showProductLoadingContainer = false;
    fetchProductsByCategory();
    setState(() {});
  }

  Container buildProductLoadingContainer() {
    return Container(
      height: _showProductLoadingContainer ? 40 : 0,
      width: 200,
      color: MyTheme.red,
      child: Center(
        child: Text(
          _totalProductData == _productListByCategory.length
              ? 'No more products'
              : 'Loading more products',
          style: TextStyle(
            color: MyTheme.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              SpaceHelper.verticalSpaceSmall,
              Container(
                height: DeviceInfo(context).width < 600 ? 110 : 120,
                child: bakeryCategoryCard(),
              ),
              SpaceHelper.verticalSpaceMedium,
              Container(
                height: MediaQuery.of(context).size.height - 240,
                child: buildProductList(),
              ),
            ]),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: MyTheme.white,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black54,
        ),
      ),
      title: Text(
        'Restaurant',
        style: TextStyles.buildAppBarTexStyle(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              listView = !listView;
            });
          },
          icon: listView == false
              ? Icon(Icons.grid_view_rounded, size: 30)
              : Icon(Icons.list_alt_sharp, size: 30),
          color: Colors.purple,
        ),
      ],
      elevation: 3.0,
      titleSpacing: 0,
    );
  }

  Widget bakeryCategoryCard() {
    return StreamBuilder(
        stream: bakeryCategoryDataRXobj.getBakeryCategoryData,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("Connection Error!");
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return SingleChildScrollView(child: buildShimmer());
          } else if (snapshot.hasData) {
            Map data = snapshot.data;
            var bakeryCategoryData = data['data'];
            return ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        categoryId = bakeryCategoryData[index]['id'];
                        resetProductList();
                        // fetchProductsByCategory();
                        // log(categoryId.toString());
                      });
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: DeviceInfo(context).width < 600
                                ? DeviceInfo(context).width / 4
                                : DeviceInfo(context).width / 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0)),
                                  child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/placeholder.png',
                                    image:
                                        '${bakeryCategoryData[index]['banner']}',
                                    height: 60,
                                    width: DeviceInfo(context).width < 600
                                        ? DeviceInfo(context).width / 3.8
                                        : DeviceInfo(context).width / 4.8,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                    '${bakeryCategoryData[index]['name']}'
                                        .toUpperCase(),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: categoryId ==
                                            bakeryCategoryData[index]['id']
                                        ? TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyTheme.accent_color)
                                        : TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: DeviceInfo(context).width < 600
                                ? DeviceInfo(context).width / 4
                                : DeviceInfo(context).width / 8,
                            decoration: BoxDecoration(
                                color: categoryId ==
                                        bakeryCategoryData[index]['id']
                                    ? Color.fromARGB(40, 0, 13, 255)
                                    : Color.fromARGB(0, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                separatorBuilder: ((context, index) {
                  return SizedBox(
                    width: 5,
                  );
                }),
                itemCount: bakeryCategoryData.length);
          }
          return SizedBox.shrink();
        });
  }

  buildProductList() {
    if (_isProductInitial && _productListByCategory.length == 0) {
      return SingleChildScrollView(
          child: ShimmerHelper()
              .buildProductGridShimmer(scontroller: _scrollController));
    } else if (_productListByCategory.length > 0) {
      return Stack(
        children: [
          CustomScrollView(
            controller: _bakeryScrollController,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Container(
                      child: listView == false
                          ? GridView.builder(
                              itemCount: _productListByCategory.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                // childAspectRatio: 3 / 4.5,
                                childAspectRatio:
                                    DeviceInfo(context).width < 600
                                        ? 3 / 4.8
                                        : 3 / 4,
                              ),
                              padding: EdgeInsets.all(0.0),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                // 3
                                return AnimationConfiguration.staggeredGrid(
                                  columnCount: 3,
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  child: ScaleAnimation(
                                    scale: 0.5,
                                    child: FadeInAnimation(
                                      child: ProductCard(
                                        id: _productListByCategory[index].id,
                                        image: _productListByCategory[index]
                                            .thumbnailImage,
                                        name:
                                            _productListByCategory[index].name,
                                        basePrice: _productListByCategory[index]
                                            .basePrice,
                                        baseDiscountedPrice:
                                            _productListByCategory[index]
                                                .baseDiscountedPrice,
                                        hasDiscount:
                                            _productListByCategory[index]
                                                .hasDiscount,
                                        discount: _productListByCategory[index]
                                            .discount
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: _productListByCategory.length,
                              separatorBuilder: (context, index) => Divider(
                                color: Colors.grey,
                              ),
                              itemBuilder: (context, index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: ListItemProductCard(
                                        id: _productListByCategory[index].id,
                                        image: _productListByCategory[index]
                                            .thumbnailImage,
                                        name:
                                            _productListByCategory[index].name,
                                        basePrice: _productListByCategory[index]
                                            .basePrice,
                                        baseDiscountedPrice:
                                            _productListByCategory[index]
                                                .baseDiscountedPrice,
                                        hasDiscount:
                                            _productListByCategory[index]
                                                .hasDiscount,
                                        discount: _productListByCategory[index]
                                            .discount
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
          
          Align(
              alignment: Alignment.center,
              child: buildProductLoadingContainer())
        ],
      );
    } else if (categoryId == null) {
      return SingleChildScrollView(
          child: ShimmerHelper()
              .buildProductGridShimmer(scontroller: _scrollController));
    } else if (_totalProductData == 0) {
      return Center(child: Text('No product is available'));
    } else {
      return Container(); // should never be happening
    }
  }

  Widget buildShimmer() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 1,
        crossAxisCount: 3,
      ),
      itemCount: 18,
      padding: EdgeInsets.only(left: 18, right: 18, bottom: 30),
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecorations.buildBoxDecoration_1(),
          child: ShimmerHelper().buildBasicShimmer(),
        );
      },
    );
  }
}
