import 'package:flutter/material.dart';
import 'package:musicappui/albumart.dart';
import 'package:musicappui/colors.dart';
import 'package:musicappui/controls.dart';
import 'package:musicappui/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: '')
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NavigationBar(),
              Container(
                height: height / 2.5,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return AlbumArt();
                  },

                  itemCount: 3,
                  scrollDirection: Axis
                      .horizontal, // change scroll direction of the list view builder
                ),
              ),
              Text('Pierre Bourne',
                  style: TextStyle(
                      // padding already created because of margin created
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: darkPrimaryColor)),
              Text('YNS',
                  style: TextStyle(
                      // padding already created because of margin created
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: darkPrimaryColor)),
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 5,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                ),
                child: Slider(
                  value: sliderValue,
                  activeColor: darkPrimaryColor,
                  inactiveColor: darkPrimaryColor.withOpacity(0.3),
                  onChanged: (value) {
                    setState(() {
                      sliderValue =
                          value; //set state to change the slider value of the Slider widget
                    });
                  },
                  min: 0,
                  max: 20,
                ),
              ),
              PlayerControls(),
              SizedBox(
                height: 100,
              )
            ]));

    // listview builder when given
  }
}
