import 'package:apisd/Domain/repo/IRepo.dart';
import 'package:apisd/Utils/overly_utils.dart';
import 'package:apisd/data/LocalDataSource/Storage/IPrefHelper.dart';
import 'package:apisd/di/serviceLocator.dart';
import 'package:flutter/material.dart';

import '../Services/navigator_service.dart';

mixin BaseMixin <T extends StatefulWidget> on State<T>{
  OverlyHelper helper = locator<OverlyHelper>();
  IPrefHelper iPrefHelper = locator<IPrefHelper>();
  NavigationService navigationService = locator<NavigationService>();
  IRepo repo = locator<IRepo>();

  @protected
  void showOverlay(String msg) {
    helper.showToast(msg);
  }

  @protected
  void safeSetState(VoidCallback voidCallback) {
    if (mounted) {
      setState(() {
        voidCallback.call();
      });
    }
  }
}