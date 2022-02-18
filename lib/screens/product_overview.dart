// ignore_for_file: prefer_const_constructors

import 'package:e_shop/provider/products.dart';
import 'package:e_shop/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
import '../widgets/product_item.dart';

enum FilterOptions { Favorites, All }

class ProducOverviewScreen extends StatefulWidget {
  @override
  State<ProducOverviewScreen> createState() => _ProducOverviewScreenState();
}

class _ProducOverviewScreenState extends State<ProducOverviewScreen> {
  bool _showFavoritesOnly = false;
  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showFavoritesOnly = true;
                } else {
                  _showFavoritesOnly = false;
                }
              });
            },
            itemBuilder: (_) {
              return [
                PopupMenuItem(
                  child: Text('Only favorites'),
                  value: FilterOptions.Favorites,
                ),
                PopupMenuItem(
                  child: Text('Show All'),
                  value: FilterOptions.All,
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ProductGrid(_showFavoritesOnly),
    );
  }
}
