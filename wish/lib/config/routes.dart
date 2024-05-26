// All application routes are placed here
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/screens/add_product.dart';
import 'package:shopping_app/screens/login.dart';
import 'package:shopping_app/screens/register.dart';
import 'package:shopping_app/utils/constants.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    RoutesConstants.LOGIN: (context) => const Login(),
    RoutesConstants.REGISTER: (context) => const Register(),
    RoutesConstants.ADD_PRODUCT: (context) => AddProduct(),
  };
}
