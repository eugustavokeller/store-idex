import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_idex/models/cart.dart';
import 'package:shop_idex/models/order_list.dart';
import 'package:shop_idex/models/product_list.dart';
import 'package:shop_idex/pages/cart_page.dart';
import 'package:shop_idex/pages/orders_page.dart';
import 'package:shop_idex/pages/product_detail_page.dart';
import 'package:shop_idex/pages/product_form_page.dart';
import 'package:shop_idex/pages/products_overview_page.dart';
import 'package:shop_idex/pages/products_page.dart';
import 'package:shop_idex/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 92, 17, 105),
            secondary: const Color.fromARGB(255, 237, 83, 80),
          ),
          fontFamily: 'Lato',
        ),
        // home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.home: (ctx) => const ProductsOverviewPage(),
          AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
          AppRoutes.cart: (ctx) => const CartPage(),
          AppRoutes.orders: (ctx) => const OrdersPage(),
          AppRoutes.products: (ctx) => const ProductsPage(),
          AppRoutes.productForm: (ctx) => const ProductFormPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
