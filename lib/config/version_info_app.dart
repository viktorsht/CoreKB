
import 'package:package_info_plus/package_info_plus.dart';

class VersionInfoApp{
    //PackageInfo packageInfo = await PackageInfo.fromPlatform();
    Future<String> versionApp() async {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String currentVersion = packageInfo.version;
      return currentVersion;
    }
}