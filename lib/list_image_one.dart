import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_product.dart';

class ListImage extends StatelessWidget {
  final int id;
  ListImage({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => DetailScreen(id: id)),
      // ),
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Image.asset(
              //   productAll[id].image,
              //   fit: BoxFit.cover,
              // ),
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Image.asset(
                    productAll[id].image,
                    fit: BoxFit.cover,
                  ),
                  ClipRRect(
                      borderRadius:
                      BorderRadius.all(Radius.circular(500)),
                      child: Container(
                        margin: EdgeInsets.only(right: 5, top: 5),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.white,
                            ),
                            Image.asset("assets/images/image_heart.png",height: 15,width: 15,),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(productAll[id].price1,
                        style: TextStyle(
                          fontSize: 12,

                          color: Colors.green,
                        )),
                    Text(productAll[id].price2,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                            decoration: TextDecoration.lineThrough
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productAll[id].text1,style: TextStyle(color: Colors.red,fontSize: 18, ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      productAll[id].text2,
                    ),
                    Text(
                      productAll[id].text3,
                    ),
                    Text(
                      productAll[id].text4,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
