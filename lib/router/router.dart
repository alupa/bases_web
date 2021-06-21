import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';
// import 'package:bases_web/ui/views/counter_provider_view.dart';
// import 'package:bases_web/ui/views/counter_view.dart';
// import 'package:bases_web/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler,
        // transitionDuration: Duration(milliseconds: 1000),
        transitionType: TransitionType.fadeIn);

    // Stateful Routes
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    // Provider Routes
    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);

    // 404 - Page not found
    router.notFoundHandler = pageNotFound;
  }
}
