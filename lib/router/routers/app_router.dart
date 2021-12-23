import 'package:auto_route/auto_route.dart';

import 'routes/root_tab.route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    rootTabRoute,
  ],
)
class $AppRouter {}
