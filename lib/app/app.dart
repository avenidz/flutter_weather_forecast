import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/home_page/home_page.dart';

@StackedApp(routes: [
  CustomRoute(page: HomePage, name: 'HomePage', initial: true)
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: BottomSheetService),
])
class App {}
