import 'package:estate_project/src/core/navigation/navigation_services.dart';
import 'package:estate_project/src/ui/main_platform.dart/mobile/first_screen/providers/view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final getIt = GetIt.instance;

Future setupLocator() async {
//register your class and singletons here

  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerLazySingleton(() => FeatureProvider());
}

final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (context) => FeatureProvider()),
];

