import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../models/planet_model.dart';

class PlanetViewer extends StatelessWidget {
  const PlanetViewer({
    super.key,
    required this.planet,
  });

  final PlanetInfo planet;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -1),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.45,
          child: ModelViewer(
            backgroundColor: Colors.transparent,
            src: planet.model,
            //poster: planet.image,
            alt: "${planet.name} model",
            loading: Loading.eager,
            ar: true,
            xrEnvironment: true,
            autoRotate: true,
            cameraControls: true,
            touchAction: TouchAction.none,
            interactionPrompt: InteractionPrompt.none,
            shadowIntensity: 0.5,
            shadowSoftness: 0.5,
          )
      ),
    );
  }
}
