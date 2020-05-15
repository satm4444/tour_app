import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tour/model/hotel.dart';

class DealsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;
    final fromModel = Provider.of<Hotel>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0.0),
      child: Container(
        //  height: forheight * 1.0,
        width: forWidth * .3,

        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2),
              ),
              child: Container(
                height: forheight * 0.185,
                width: 100.4,
                child: Image.network(fromModel.imageURL, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.2),
              child: Container(
                width: forWidth * .268,
                height: forheight * 0.075,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.06)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        height: 20,
                        // color: Colors.blue,
                        child: Flexible(
                          child: Text(
                            fromModel.title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "bestfont",
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.place,
                            size: 11,
                            color: Colors.blue,
                          ),
                          Flexible(
                            child: Text(
                              fromModel.subtitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: "bestfont",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "NPR 4000/-",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "bestfont",
                            fontWeight: FontWeight.w800,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // color: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
