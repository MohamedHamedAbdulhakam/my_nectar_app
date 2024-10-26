import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/widgets/logo_section.dart';

class SliverAppBarForHomeVeiw extends StatelessWidget {
  const SliverAppBarForHomeVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      expandedHeight: 50, // Increase the height of the SliverAppBar
      floating: true,
      title: LogoSection(height: 1,),
    );
  }
}