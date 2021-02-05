import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen/bottom_navabar/bottom_navbar.dart';
import 'package:travel_app/screens/home_screen/place_card/place_card.dart';
import 'package:travel_app/screens/home_screen/themed_chip/themed_chip.dart';
import 'package:travel_app/screens/place_screen/place_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/name';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0, left: 14.0, bottom: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Icon(Icons.place_outlined),
                  Text('Jakarta, Indonesia'),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text(
                  'Where do you like to go ? 👋',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 40.0,
                  ),
                  child: Row(
                    children: [
                      ThemedChip(
                        text: 'Place',
                        isSelected: true,
                      ),
                      ThemedChip(
                        text: 'Culinary',
                        isSelected: false,
                      ),
                      ThemedChip(
                        text: 'Culture',
                        isSelected: false,
                      ),
                      ThemedChip(
                        text: 'Extra',
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 200,
                    maxHeight: 400,
                  ),
                  child: Row(
                    children: [
                      PlaceCard(
                        title: 'Mt Rinjani',
                        subtitle: 'Lombok, Indonesia',
                        image: 'assets/home_screen/mountain.jpg',
                        routeTo: PlaceScreen.routeName,
                      ),
                      PlaceCard(
                        title: 'Bromo',
                        subtitle: 'Java, Indonesia',
                        image: 'assets/home_screen/mountains.jpg',
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
