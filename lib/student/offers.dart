import 'package:flutter/material.dart';
import 'partials/offeritem.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        leading: Icon(Icons.card_giftcard),
        title: Text('Offers'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: <Widget>[
                OfferItem('Dominos','Get Rs 20 on every order from Dominos', 'assets/dominos.png'),
                OfferItem('MC Donals\'s','Buy coke and a burger and get fries for free', 'assets/mcd.jpg'),
                OfferItem('Coolwinks','Rs 1000 discount on the first frame','assets/cwinks.jpg'),
                OfferItem('Swiggy','Get Rs 50 discount on first 10 orders' ,'assets/swiggi.png'),
                OfferItem('Zomato','Get Rs 30 on every order','assets/zomato.png'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
