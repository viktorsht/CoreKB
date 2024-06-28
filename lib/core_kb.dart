library core_kb;

export 'themes/theme_controller.dart';
export 'controllers/controller.dart';
export 'states/core_state.dart';

import 'package:core_kb/themes/theme_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import '../cache/repositories/cache_repository.dart';
import '../cache/repositories/shared_preferences_impl.dart';
import 'api/headers.dart';
import 'config/version_info_app.dart';
import 'http/http_client.dart';
import 'http/http_client_impl.dart';

class CoreModule extends Module{
  @override
  void exportedBinds(Injector i) {
    i.add<CacheRepository>(SharedPreferencesImpl.new);
    i.add<ClientHttp>(ClientHttpImpl.new);
    i.addInstance(Client());
    i.add<Headers>(HeadersApi.new);
    i.add(VersionInfoApp.new);
    i.add(ThemeController.new);
  }

}
