import 'package:flutter/material.dart';

import 'views/planet_view.dart';
import 'services/planet_service.dart';

void main() {
  runApp(const MyPlanetsApp());
}

class MyPlanetsApp extends StatelessWidget {
  const MyPlanetsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Planets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlanetWidget(),
    );
  }
}

class PlanetWidget extends StatefulWidget {
  const PlanetWidget({Key? key}) : super(key: key);

  @override
  State<PlanetWidget> createState() => _PlanetWidgetState();
}

class _PlanetWidgetState extends State<PlanetWidget>
    with TickerProviderStateMixin {

  PageController? pageViewController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF1F232A),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: PageView.builder(
                controller: pageViewController ??=
                  PageController(
                    initialPage: ((1 << 30) / PlanetDB.getPlanetCount()).ceil(),
                  ),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final planet = PlanetDB.getPlanetByIndex(index % PlanetDB.getPlanetCount());
                  return PlanetPage(
                    planet: planet!,
                    pageViewController: pageViewController,
                  );
                },
              )
            ),
          ),
        ),
      ),
    );
  }
}
