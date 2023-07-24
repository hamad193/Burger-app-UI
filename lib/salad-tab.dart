import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_burger_app/second-page.dart';
import 'package:google_fonts/google_fonts.dart';

class SaladTab extends StatefulWidget {
  @override
  _SaladTabState createState() => _SaladTabState();
}

class _SaladTabState extends State<SaladTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildListItem(
                        'Ceaser Salad', '150', '3', 'assets/images/ceaser.png', 'Featured with romaine lettuce, croutons dressed with lemon juice, olive oil, garlic, Parmesan cheese, and black pepper'
                    ),
                    _buildListItem(
                        'Chicken Salad', '200', '5', 'assets/images/chicken.png', 'Skinless chicken breast pieces, mayonnaise, hard-boiled egg, celery, onion, pepper, pickles mustards'
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildListItem('Cobb Salad', '170', '3',
                        'assets/images/cobb.png', 'Freshly ground black pepper, boild egg slices, romaine lettuce, crumbled blue cheese, finely chopped chives, olive oil'),
                    _buildListItem(
                        'Spinach Salad', '130', '2', 'assets/images/spinach.png', ' Fresh spinach, thinly sliced apple, crumbled feta, red onion, sliced almonds. Dressed with olive oil, salt, red vinegar'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildListItem(
      String name,
      String weight,
      String price,
      String image,
      String description,
      ) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SecondPage(
              heroTag: name,
              name: name,
              price: price,
              image: image,
              weight: weight,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        height: 220.0,
        width: 160.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1.0,
              spreadRadius: 3.0,
              offset: Offset(3.0, 3.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20.0,
              child: Row(
                children: [
                  IconButton(
                    color: Colors.black,
                    tooltip: 'Add to Favorite',
                    splashRadius: 10.0,
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              child: Image.asset(image),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15.0),
                  Text(
                    name,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.0),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15.0),
                  Text(
                    'Weight: ' + weight + ' g',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          '\$' + price,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //SizedBox(height: 10.0),
                      Container(
                        height: 34.0,
                        width: 34.0,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xFFFFA300),
                          child: Icon(Icons.add),
                          tooltip: 'Add to Cart',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
