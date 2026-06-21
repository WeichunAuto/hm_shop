import 'package:flutter/material.dart';
import 'package:hm_shop/pages/login/index.dart';
import 'package:hm_shop/pages/main/index.dart';

Widget getRootWidget() {
  return MaterialApp(
    // 命名路由
    initialRoute: "/",
    routes: getRootRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    "/": (context) => MainPage(), // 首页路由
    "/login": (context) => LoginPage(), // 登录页路由
  };
}
