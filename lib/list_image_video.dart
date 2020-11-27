import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_product.dart';

class ListImageVideo extends StatelessWidget {
  final int id;
  ListImageVideo({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => DetailScreen(id: id)),
      // ),
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(
                    productAll[id].image2,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/image_video.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        productAll[id].text5,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            productAll[id].text6,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              letterSpacing: 0.4,
                            ),
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.visible,
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        productAll[id].text7,
                        style: TextStyle(fontSize: 16),
                      ),
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
