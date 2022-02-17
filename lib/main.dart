import 'package:e_shop/provider/products.dart';
import 'package:e_shop/screens/product_details_screen.dart';
import 'package:e_shop/screens/product_overview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple, accentColor: Colors.deepOrange),
        home: ProducOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) =>
              const ProductDetailScreen(title: 'title'),
        },
      ),
    );
  }
}
