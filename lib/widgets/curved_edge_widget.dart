import 'package:flutter/material.dart';
import 'package:ild/widgets/custom_edge_clipper.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const CustomScreenClipper(),
      child: Container(
        height: 380,
        color: const Color.fromARGB(255, 39, 23, 159),
      ),
    );
  }
}
