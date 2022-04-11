import 'package:fancy_richtext/fancy_richtext.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const FancyRichText(
        text: """
**//black//1.** #//cyan//HEADING# \n
2. ##//yellow//HEADING2## \n
3. ###//green//HEADING3### \n
4. ####//#232323//HEADING4M<__>HEXCOLOR#### \n
5. #####HEADING5##### \n
6. ######HEADING6###### \n
7. <--/__/--> --> <__> SPACE \n
8. **BOLD** \n
9. ***BOLD_ITALIC*** \n
10. ~STRIKE_THROUGH~ \n
11. *ITALIC* \n
12. **//red//BOLD<__>WITH<__>COLOR** \n
12. _UNDER_LINE_ \n

        """,
      ),
    );
  }
}
