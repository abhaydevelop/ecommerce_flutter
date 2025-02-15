import 'package:flutter/material.dart';

import 'carved_edges.dart';

class TCarveEdgeWidget extends StatelessWidget {
  const TCarveEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}