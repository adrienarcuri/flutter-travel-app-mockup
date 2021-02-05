import 'package:flutter/material.dart';
import 'package:travel_app/screens/place_screen/floating_button/floating_button.dart';
import 'package:travel_app/screens/place_screen/iconItem/icon_item.dart';

class PlaceScreen extends StatelessWidget {
  static const routeName = '/place';

  const PlaceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingButton(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('assets/home_screen/mountain.jpg'))),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.all(40.0),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mt Rinjani',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          '(376 Km)',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                              size: 20,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Lombok, Indonesia',
                        style: Theme.of(context).textTheme.subtitle1),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35.0),
                      child: Wrap(
                        spacing: 30.0,
                        runSpacing: 20.0,
                        children: [
                          IconItem(
                            image: 'assets/place_screen/waterfall.png',
                            text: 'Waterfall',
                          ),
                          IconItem(
                            image: 'assets/place_screen/lake.png',
                            text: 'Lake',
                          ),
                          IconItem(
                            image: 'assets/place_screen/village.png',
                            text: 'Village',
                          ),
                          IconItem(
                            image: 'assets/place_screen/springs.png',
                            text: 'Sptrings',
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.',
                      style: TextStyle(height: 1.5),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.height * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.57,
              child: Card(
                shape: CircleBorder(),
                elevation: 6,
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
