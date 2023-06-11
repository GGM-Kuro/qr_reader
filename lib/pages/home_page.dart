import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
            appBar: AppBar(
                title: const Text('historial'),
                actions: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.delete_forever)
                    )
                ],
            ),
        body: const _HomePageBody(),
        bottomNavigationBar: const CustomNavigationBar(),
        floatingActionButton: const ScanButton() ,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});


  @override
  Widget build(BuildContext context) {

        final uiProvider = Provider.of<UiProvider>(context);

        final currentIndex = uiProvider.selectedMenuOpt;

        switch (currentIndex) {
                  case 0:
                    return const MapsHistoyrPage();
                  case 1:
                    return const DirectionsPage();

                  default:
                    return const MapsHistoyrPage();
                }
  }
}
