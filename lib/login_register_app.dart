import 'package:flutter/material.dart';
import 'package:mango_shopping_app/routes.dart';
import 'package:mango_shopping_app/utils/helpers/navigation_helper.dart';
import 'package:mango_shopping_app/utils/helpers/snackbar_helper.dart';
import 'package:mango_shopping_app/values/app_routes.dart';
import 'package:mango_shopping_app/values/app_strings.dart';

class LoginRegisterApp extends StatelessWidget {
  const LoginRegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.loginAndRegister,
      initialRoute: AppRoutes.login,
      scaffoldMessengerKey: SnackbarHelper.key,
      navigatorKey: NavigationHelper.key,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
