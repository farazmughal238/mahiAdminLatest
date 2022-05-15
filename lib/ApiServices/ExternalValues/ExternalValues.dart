import 'package:apisd/ApiServices/ExternalValues/IExternalValues.dart';

class ExternalValues implements IExternalValues{
  @override
  String getBaseUrl() {
    return 'https://mahi009.herokuapp.com/api/';
  }
}