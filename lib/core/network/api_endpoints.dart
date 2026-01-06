

import '../config/app_config.dart';

enum EndPoints {
  login,
  getVehicle,
  createVehicle,
  deleteVehicle,
}

class APIEndPoints {
  static String urlString(EndPoints endPoint) {
    print("api url  ${AppConfig.BASE_URL+endPoint.endPointString}");
    return endPoint.endPointString;
  }
}

extension EndPointsExtension on EndPoints {
  String get endPointString {
    switch (this) {
      case EndPoints.login:
        return "/api/machine-test/login";
      case EndPoints.getVehicle:
        return "/api/machine-test/list";
      case EndPoints.createVehicle:
        return "/api/machine-test/create";
      case EndPoints.deleteVehicle:
        return "/api/machine-test/delete";
    }
  }
}