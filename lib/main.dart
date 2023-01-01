import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:roamhome_caretaker_app/redux/store.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/router.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //debugPaintSizeEnabled = true;
  // await dotenv.load(fileName: ".env");

 /* runApp(DevicePreview(
  enabled: true,
   builder: (context) => MyApp(),
 ),);*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return StoreProvider(
        store: store,
        child: MaterialApp(
          useInheritedMediaQuery: true,
         locale: DevicePreview.locale(context),
         builder: DevicePreview.appBuilder,
          title: "Roamhome Caretakers",
          theme: ThemeData(
            scaffoldBackgroundColor: secondaryBgColor,
            primaryColor: primaryColor,
            splashColor: splashColor,
            backgroundColor: primaryBgColor,
            fontFamily: 'Inter',
            brightness: Brightness.light,
            focusColor: Colors.black,
          ),
          initialRoute: splashRoute,
          onGenerateRoute: generateRoute,
          //localizationsDelegates: const [FormBuilderLocalizations.delegate],
        ));
  }
}
