import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

      @override
      Widget build(BuildContext context) {
        return MultiProvider(
            providers: [
                ChangeNotifierProvider(create: (_) => UiProvider()),
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'QR Reader',
                initialRoute: 'home',
                theme: ThemeData.dark(),
                routes: {
                 'home':(_) => HomePage(),
                 'map':(_) => MapPage(),
                },
          ),
        );
      }
}
