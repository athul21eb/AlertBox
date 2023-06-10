import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Box"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: buttonStyle,
          child: const Text(
            "Show  AlertBox",
            style: textStyle,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  actions: [
                    TextButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: textStyle.copyWith(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "OK",
                        style: textStyle.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                  title: const Text(
                    "Do you want to exit ?",
                    style: textStyle,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
