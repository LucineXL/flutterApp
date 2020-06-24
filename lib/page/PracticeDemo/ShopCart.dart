import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShopItem extends StatelessWidget {
  ShopItem({Key key, this.product, this.inCart, this.onChange}) : super(key: key);
  final Product product;
  final bool inCart;
  final CartChangedCallback onChange;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onChange(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name, style: _getTextStyle(context)),
    );
  }
}

class ShopList extends StatefulWidget {
  ShopList({Key key, this.products}) : super(key: key);
  final List<Product> products;

  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged (Product product, bool inCart) {
    setState(() {
      if(inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: widget.products.map((Product product) {
        return new ShopItem(
          product: product,
          inCart: _shoppingCart.contains(product),
          onChange: _handleCartChanged,
        );
      }).toList(),
    );
  }
}


class ShopCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('shopping cart'),
      ),
      body: new ShopList(
        products: <Product>[
          new Product(name: '史明克'),
          new Product(name: '美利蓝'),
          new Product(name: '鲁本斯'),
          new Product(name: '马利'),
        ],
      ),
    );
  }
}