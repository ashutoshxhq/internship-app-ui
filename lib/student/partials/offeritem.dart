import 'package:flutter/material.dart';
class OfferItem extends StatelessWidget {
  var imageFile;
  var offer;
  var company;

  OfferItem(this.company,this.offer,this.imageFile);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 100,
                child: Container(

                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(10),
                      image:
                      DecorationImage(image: AssetImage(imageFile),fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        company,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(offer),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
