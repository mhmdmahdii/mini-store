import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/screens/details_product.dart';
import 'package:store/widgets/card_products_widget.dart';

import '../models/product_model.dart';

class HomePage extends StatelessWidget {
  static const String routeName='home';
 var product= products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("مرحبا بك في متجر الالكترونيات",style: GoogleFonts.getFont('Almarai'),),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.1),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)
              )
            ),
          ),
          ListView.builder(
            itemCount: product.length,
              itemBuilder:(context, index) {
                return  InkWell(
                    onTap: (){
                      debugPrint(index.toString());
                      Navigator.pushNamed(context,DetailsProducts.routeName,arguments: product[index]);
                    },
                    child: CardWidgetProducts(product[index]));
              }, ),
        ],
      ),
    );
  }
}
