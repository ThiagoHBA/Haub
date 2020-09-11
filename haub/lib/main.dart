import 'package:flutter/material.dart';
import 'package:haub/view/add_question/question_page.dart';
import 'package:haub/view/chat_screen/chat_screen.dart';
import 'package:haub/view/home/drawer.dart';
import 'package:haub/view/onboard/cadastro.dart';
import 'package:haub/view/onboard/login.dart';
import 'models/colorPalette.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Haub';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) =>  MyLoginPage(),
        '/home': (context) => MyHomePageWidget(),
        '/cadastro': (context) => MyRegisterPage(),
      },
      //MyHomePageWidget(),
    );
  }
}

class MyHomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          title: const Text('Haub home'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyLoginPage()));
              },
            ),
          ],
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text("Navegar para o chat"),
                  color: ColorPalette.secondaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyChatPage()));
                  }),
              RaisedButton(
                  child: Text("Navegar para o adicionar"),
                  color: ColorPalette.secondaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyQuestionPage()));
                  }),
            ],
          ),
        ),
    );
  }
}
