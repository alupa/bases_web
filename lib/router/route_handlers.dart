import 'package:fluro/fluro.dart';
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

//Handlers
final Handler counterHandler = new Handler(handlerFunc: (context, params) {
  print(params['base']?[0]);
  return CounterView(base: params['base']?.first ?? '5');
});

final Handler counterProviderHandler =
    new Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?.first ?? '10');
});

final Handler dashboardUserHandler =
    new Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});

//404
final Handler pageNotFound = new Handler(handlerFunc: (_, __) => View404());
