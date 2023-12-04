import 'package:flutter/material.dart';
import 'package:topicos/screens/conversor_screen.dart';
import 'package:topicos/screens/counter.dart';
import 'package:topicos/screens/dashboard_screen.dart';
import 'package:topicos/screens/image_carousel.dart';
import 'package:topicos/screens/intenciones_screen.dart';
import 'package:topicos/screens/login_screen.dart';
import 'package:topicos/screens/popular_screen.dart';
import 'package:topicos/screens/splash_screen.dart';
import 'package:topicos/screens/login_screen.dart';
import 'package:topicos/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/temp": (context) => const ConversorScreen(),
        "/dash": (context) => const DashboardScreen(),
        "/int": (context) => IntencionesScreen(),
        "/movie": (context) => PopularScreen()
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

void main() {
  runApp(FirstScreen());
  runApp(MainApp());

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnboardingPage(),
    );
  }
}


class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 251, 255, 1),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                      )),
                  height: 400,
                  width: 600,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Fruta',
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Cada uno.'),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Descripción del producto',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Una rica piña, una fresa delicioosa y un arándano espectacular.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.amber[200]!),
                                ),
                                height: 70.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .white, // Color de fondo del botón elevation: 0.0, // Elevación del botón
                                  ),
                                  onPressed: _toggleFavorite,
                                  child: IconButton(
                                    icon: _isFavorited
                                        ? Icon(Icons.favorite_border,
                                            color: const Color.fromARGB(
                                                255, 255, 79, 255))
                                        : Icon(Icons.favorite,
                                            color: const Color.fromARGB(
                                                255, 255, 79, 255)),
                                    onPressed: _toggleFavorite,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                height: 70.0,
                                minWidth: 200.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 212, 0,
                                        0), // Color de fondo del botón elevation: 2.0, // Elevación del botón
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Añadir a la carta',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CarouselWithIndicatorDemo(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                        )),
                    height: 400,
                    width: 600,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Más frutas',
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Más frutas.'),
                            SizedBox(
                              height: 20.0,
                            ),
                            CounterDesign(),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Descripción del producto',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Otra rica piña, otra fresa delicioosa y otro arándano espectacular.',
                              style:
                                  TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: <Widget>[
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.amber[200]!),
                                  ),
                                  height: 70.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .white, // Color de fondo del botón

                                      elevation: 0.0, // Elevación del botón
                                    ),
                                    onPressed: _toggleFavorite,
                                    child: IconButton(
                                      icon: _isFavorited
                                          ? Icon(Icons.favorite_border,
                                              color: const Color.fromARGB(
                                                  255, 255, 79, 255))
                                          : Icon(Icons.favorite,
                                              color: const Color.fromARGB(
                                                  255, 255, 79, 255)),
                                      onPressed: _toggleFavorite,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0)),
                                  height: 70.0,
                                  minWidth: 200.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 212, 0,
                                          0), // Color de fondo del botón elevation: 2.0, // Elevación del botón
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Añadir a la carta',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
