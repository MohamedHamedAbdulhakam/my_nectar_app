import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
routerConfig: AppRouter.router,
     
    );
  }
}
// GoRouter configuration
