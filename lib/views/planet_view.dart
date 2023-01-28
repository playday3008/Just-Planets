import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../widgets/nav_icon_button_widget.dart';
import '../widgets/planet_numbers_widget.dart';
import '../widgets/planet_viewer_widget.dart';
import '../widgets/planet_text_widget.dart';

import '../models/planet_model.dart';
export '../models/planet_model.dart';

class PlanetPage extends StatelessWidget {
  const PlanetPage({
    Key? key,
    required this.planet,
    this.pageViewController,
  }) : super(key: key);

  final PlanetInfo planet;
  final PageController? pageViewController;

  final animationsMap = const {
    'rowOnPageLoadAnimation': <Effect>[
      FadeEffect(
        curve: Curves.easeInOut,
        delay: Duration(milliseconds: 0),
        duration: Duration(milliseconds: 600),
        begin: 0,
        end: 1,
      ),
    ],
    'columnOnPageLoadAnimation': <Effect>[
      MoveEffect(
        curve: Curves.easeInOut,
        delay: Duration(milliseconds: 0),
        duration: Duration(milliseconds: 600),
        begin: Offset(-52, 0),
        end: Offset(0, 0),
      ),
    ],
  };

  @override
  Widget build(BuildContext context) => Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                color: (planet.color ?? Colors.grey[300])!.withOpacity(0.66),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(360),
                  bottomRight: Radius.circular(360),
                  topLeft: Radius.circular(360),
                  topRight: Radius.circular(360),
                ),
              ),
            ),
            PlanetViewer(planet: planet),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Align(
                alignment: const AlignmentDirectional(-0.8, -0.8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PlanetText(
                                text: planet.name,
                                fontSize: 16,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PlanetText(
                                text: planet.headline,
                                fontSize: 20,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ).animate(effects: animationsMap['rowOnPageLoadAnimation']!),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child:
                                PlanetText(
                                  text: planet.description,
                                  fontSize: 14,
                                  align: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (planet.data.avgDistance != null)
                          PlanetNumber(
                            title: 'Distance from sun',
                            text: '${planet.data.avgDistance!} km',
                            icon: Icons.wb_sunny_rounded,
                            color: planet.color,
                          ),
                        PlanetNumber(
                          title: 'Mean radius',
                          text: '${planet.data.meanRadius.toStringAsFixed(2)} km',
                          icon: Icons.public,
                          color: planet.color,
                        ),
                        PlanetNumber(
                          icon: Icons.monitor_weight_outlined,
                          title: 'Mass',
                          text: '${planet.data.mass.toStringAsExponential(6)} kg',
                          color: planet.color,
                        ),
                        PlanetNumber(
                          icon: Icons.trending_down,
                          title: 'Gravity',
                          text: '${planet.data.eqGravity.toStringAsFixed(2)} m/s²',
                          color: planet.color,
                        ),
                        if (planet.data.lengthOfYear != null)
                          PlanetNumber(
                            icon: Icons.timer_outlined,
                            title: 'Length of year',
                            text: '${(planet.data.lengthOfYear! * 365).toStringAsFixed(5)} days',
                            color: planet.color,
                          ),
                        PlanetNumber(
                          icon: Icons.thermostat_rounded,
                          title: 'Mean temperature',
                          text: '${planet.data.meanTemperature} K',
                          color: planet.color,
                        ),
                      ],
                    ).animate(effects: animationsMap['columnOnPageLoadAnimation']),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PlanetText(
                        text: 'DISCOVER',
                        fontSize: 14,
                        color: planet.color
                      ),
                      NavIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: const Icon(
                          Icons.arrow_upward_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () async {
                          await pageViewController?.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOutExpo,
                          );
                        },
                      ),
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          planet.image,
                        ),
                      ),
                      NavIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: const Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () async {
                          await pageViewController?.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOutExpo,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
}
