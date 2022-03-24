// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/states/authen.dart';
import 'package:test_app/states/buyer_service.dart';
import 'package:test_app/states/create_account.dart';
import 'package:test_app/states/rider_service.dart';
import 'package:test_app/states/seller_service.dart';
import 'package:test_app/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccoung': (BuildContext context) => CreateAccount(),
  '/buyerService': (BuildContext context) => BuyerService(),
  '/sellerService': (BuildContext context) => SellerService(),
  '/riderService': (BuildContext context) => RiderService(),
};

String? initlalRoute;

void main() {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
