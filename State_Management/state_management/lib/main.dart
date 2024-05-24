import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Inherited.dart';
import 'package:state_management/models/proxy_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            log("in login provider");
            return Login(userName: "Vinay@12", password: "Vinay#2003");
          },
        ),
        ProxyProvider<Login, Employee>(
          update: (context, login, employee) {
            log("in update");
            return Employee(
              empId: 12,
              empName: "Vinay",
              userName: login.userName,
              password: Provider.of<Login>(context).password,
            );
          },
        ),
      ],
      child:
          const MaterialApp(debugShowCheckedModeBanner: false, home: MainApp()),
    );
  }
}
 
 /*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/view/get_product_details.dart';
//import 'package:state_management/view/wishlist_screen.dart';
import 'controllers/product_controller.dart';
import 'controllers/wishlist_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
          return ProductController();
        }),
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return WishListController();
          },
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Provider Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: GetProductDetails(),
        );
      },
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'package:state_management/percent_indicator.dart';
//import 'package:state_management/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Demo",
      home: PercentIndicator(
        title: 'Percentage Indicator Demo',
      ),
    );
  }
}
*/
/*import 'package:provider/provider.dart';
import 'package:state_management/Consumer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Player(playerName: "Virat", jerNo: 18);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return Match(matchNo: 200, runs: 8800);
        }),
      ],
      child: const MatchSummary(),
    );
  }
}
*/

