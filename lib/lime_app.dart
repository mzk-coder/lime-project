
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/theme/cs_themedata.dart';
import 'common/constants/app_keys.dart';
import 'common/navigation/route_list.dart';
import 'common/navigation/routes.dart';

class LimeApp extends StatefulWidget {
  const LimeApp({
    Key? key,
  }) : super(key: key);

  @override
  State<LimeApp> createState() => _LimeAppState();
}

class _LimeAppState extends State<LimeApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, screenSize) {
      return ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) {
            return SafeArea(
              bottom: false,
              top: false,
              child: MaterialApp(
                navigatorKey: LimeAppKeys.materialNavKey,
                theme: AppThemeData.lightTheme,
                debugShowCheckedModeBanner: false,
                locale: const Locale('en'),
                initialRoute: RouteList.initialRoute,
                onGenerateRoute: Routes.getRoutes,
              ),
            );
          });
    });
  }
}
