import 'package:topicos/pages/home_page.dart';
import 'package:topicos/widget/card_planet.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Presentación de la escuela",
      subtitle: "El Instituto Tecnológico de Celaya (ITC) es una institución pública de educación superior ubicada en Celaya, Guanajuato, México. Se especializa en ofrecer programas académicos en el campo de la ingeniería, tecnología y ciencias aplicadas.",
      image: const AssetImage("assets/ITC.jpg"),
      backgroundColor: const Color.fromARGB(255, 0, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "Presentación de la carrera",
      subtitle: "La Ingeniería en Sistemas Computacionales es una carrera que se enfoca en el diseño, programación y mantenimiento de sistemas de software complejos. Busca formar profesionales capaces de analizar y solucionar problemas utilizando la tecnología de información y comunicaciones.",
      image: const AssetImage("assets/ISC.jpg"),
      backgroundColor: const Color.fromARGB(255, 0, 148, 2),
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-2.json"),
    ),
    CardPlanetData(
      title: "Instalaciones y demás",
      subtitle: "Las instalaciones del Instituto Tecnológico de Celaya destacan por su moderna arquitectura y espacios amplios diseñados para el aprendizaje y la convivencia estudiantil.",
      image: const AssetImage("assets/Instalaciones del ITC campus 2.jpg"),
      backgroundColor: const Color.fromARGB(255, 15, 170, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      ),
    );
  }
}
