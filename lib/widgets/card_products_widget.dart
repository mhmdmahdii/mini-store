import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class CardWidgetProducts extends StatelessWidget {
  Product product;


  CardWidgetProducts(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 13,horizontal: 15),
      height: 190,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12,offset: Offset(0,15),blurRadius:25)
          ]
      ),
      //color: Colors.deepOrange,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
              top: 0.0,left: 0.0,
              width: 200,
              height: 160,
              child: Row(
                children: [
                  Image.asset(product.image),
                ],
              )),
          Positioned(
              bottom: 0,right: 4,
              child: SizedBox(
            height: 136,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(product.title,textAlign: TextAlign.right,),
                Text(product.subTitle,textAlign: TextAlign.right,style: Theme.of(context).textTheme.caption,),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 40/5
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(" ${product.price}\$ السعر"),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
