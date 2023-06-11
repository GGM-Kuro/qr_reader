import 'package:flutter/material.dart';
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
      body: const Center(
         child: Text('HomePage'),
      ),
            bottomNavigationBar: const CustomNavigationBar(),
            floatingActionButton: ScanButton() ,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
