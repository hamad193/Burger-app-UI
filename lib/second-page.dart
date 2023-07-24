import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  final name, price, heroTag, weight, image, description ;

  SecondPage({
    this.heroTag,
    this.name,
    this.price,
    this.weight,
    this.image,
    this.description,
});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              isFavorite =! isFavorite;
              setState(() {

              });
            },
            icon: isFavorite ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border, color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/background1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 78.0,
                top: 10.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 240.0,
                    width: 240,
                    child: Image(
                      image: AssetImage(widget.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20.0,
                child: Divider(
                  color: Colors.black,
                  thickness: 3.0,
                ),
              ),
              SizedBox(width: 4.0),
              SizedBox(
                width: 20.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 3.0,
                ),
              ),
              SizedBox(width: 4.0),
              SizedBox(
                width: 20.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 3.0,
                ),
              ),
              SizedBox(width: 4.0),
              SizedBox(
                width: 20.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 3.0,
                ),
              ),
              SizedBox(width: 4.0),
              SizedBox(
                width: 20.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 3.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.roboto(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.description,
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Weight: ' + widget.weight + 'g',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.access_time_outlined,
                  color: Colors.black,
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Est. Delivery time ',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  ' 35 Min',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background2.png'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0),
                      Text(
                        '\$' + widget.price,
                        style: GoogleFonts.roboto(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Total payable',
                        style: GoogleFonts.roboto(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 55.0,
                    width: 185.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFA300),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 5.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add to cart',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            mini: true,
                            elevation: 0.0,
                            backgroundColor: Colors.white.withOpacity(0.4),
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
