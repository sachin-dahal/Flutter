import 'package:connectivity/connectivity.dart';

class CheckConnection {
  Future<bool> checkConnection() async {
    var result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      return true;
    } else if (result == ConnectivityResult.none) {
      return false;
    }
    return false;
  }
}
