import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:landing_page_task/screens/AppHome.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Balanceprovider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.white,
        ),
        home: Home(),
      ),
    );
  }
}
