import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class DetailsProducts extends StatelessWidget {
  static const String routeName = 'details';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var getdata = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "رجوع",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white60,
      ),
      body: Column(
        children: [
          Container(
            //height: MediaQuery.of(context).size.height * .55,
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.transparent,
                  height: size.height * .44,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 0),
                                blurRadius: 9)
                          ],
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Image.asset(getdata.image)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Colors.red
                        border: Border.all(color: Colors.black)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(getdata.title,textAlign: TextAlign.end,style: TextStyle(fontSize: 18),),
                ),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.7,bottom: 10,right: 15),
                  padding: EdgeInsets.all(10),
                  // height: 20,
                  // width: 20,
                  decoration: BoxDecoration(
                    color: Colors.orange, 
                    borderRadius: BorderRadius.circular(20)
                  ),
                 child: Text("السعر : \$${getdata.price} "),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              getdata.description,
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
