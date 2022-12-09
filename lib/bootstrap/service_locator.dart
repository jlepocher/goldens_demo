import 'package:get_it/get_it.dart';
import 'package:golden_tests/common/widgets/widget_list/widgets_repository.dart';

abstract class ServiceLocator {
  static void registerDependencies() {
    GetIt.I.registerFactory(() => WidgetsRepository());
  }
}
