import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topicos/screens/conversor_screen.dart';
import 'package:topicos/screens/counter.dart';
import 'package:topicos/screens/dashboard_screen.dart';
import 'package:topicos/screens/image_carousel.dart';
import 'package:topicos/screens/intenciones_screen.dart';
import 'package:topicos/screens/popular_screen.dart';
import 'package:topicos/screens/splash_screen.dart';
import 'package:topicos/pages/onboarding_page.dart';

void main() {
  runApp(const InicioSesion());
  runApp(const AplicacionFrutas());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const DeslizadorCircular());
}

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/temp": (context) => const ConversorScreen(),
        "/dash": (context) => const DashboardScreen(),
        "/int": (context) => const IntencionesScreen(),
        "/movie": (context) => const PopularScreen()
      },
      debugShowCheckedModeBanner: false,
      home: const PantallaCarga(),
    );
  }
}

class DeslizadorCircular extends StatelessWidget {
  const DeslizadorCircular({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnboardingPage(),
    );
  }
}

class AplicacionFrutas extends StatefulWidget {
  const AplicacionFrutas({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuFrutas();
  }
}

class MenuFrutas extends State<AplicacionFrutas> {
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
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: Row(
            children: <Widget>[
              const SizedBox(
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
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 251, 255, 1),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )),
                  height: 400,
                  width: 600,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Fruta',
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('Cada uno.'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Descripción del producto',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Una rica piña, una fresa delicioosa y un arándano espectacular.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
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
                                    foregroundColor: Colors
                                        .white, // Color de fondo del botón elevation: 0.0, // Elevación del botón
                                  ),
                                  onPressed: _toggleFavorite,
                                  child: IconButton(
                                    icon: _isFavorited
                                        ? const Icon(Icons.favorite_border,
                                            color: Color.fromARGB(
                                                255, 255, 79, 255))
                                        : const Icon(Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 255, 79, 255)),
                                    onPressed: _toggleFavorite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                height: 70.0,
                                minWidth: 200.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        255,
                                        212,
                                        0,
                                        0), // Color de fondo del botón elevation: 2.0, // Elevación del botón
                                  ),
                                  onPressed: () {},
                                  child: const Text(
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
                  const CarouselWithIndicatorDemo(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )),
                    height: 400,
                    width: 600,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              'Más frutas',
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text('Más frutas.'),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const CounterDesign(),
                            const SizedBox(
                              height: 30.0,
                            ),
                            const Text(
                              'Descripción del producto',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Otra rica piña, otra fresa delicioosa y otro arándano espectacular.',
                              style:
                                  TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                            ),
                            const SizedBox(
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
                                      foregroundColor: Colors
                                          .white, // Color de fondo del botón

                                      elevation: 0.0, // Elevación del botón
                                    ),
                                    onPressed: _toggleFavorite,
                                    child: IconButton(
                                      icon: _isFavorited
                                          ? const Icon(Icons.favorite_border,
                                              color: Color.fromARGB(
                                                  255, 255, 79, 255))
                                          : const Icon(Icons.favorite,
                                              color: Color.fromARGB(
                                                  255, 255, 79, 255)),
                                      onPressed: _toggleFavorite,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0)),
                                  height: 70.0,
                                  minWidth: 200.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color.fromARGB(
                                          255,
                                          212,
                                          0,
                                          0), // Color de fondo del botón elevation: 2.0, // Elevación del botón
                                    ),
                                    onPressed: () {},
                                    child: const Text(
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
