import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sankalp/controller/quote_controller.dart';
import 'package:sankalp/view/quote_tile.dart';

import '../controller/theme_controller.dart';
import '../model/quote_model.dart';

class HomeScreen extends StatelessWidget {
  final QuoteController quoteController = Get.put(QuoteController());
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Quote App'),
          actions: [
            Obx(
                  () => IconButton(
                icon: Icon(themeController.isDarkMode
                    ? Icons.brightness_7
                    : Icons.brightness_4),
                onPressed: () {
                  themeController.changeTheme;
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: quoteController.quotes.length,
                itemBuilder: (context, index) {
                  Quote quote = quoteController.quotes[index];
                  return QuoteListTile(quote: quote);
                },
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            quoteController.loadNextPage;
          },
          child: Icon(Icons.refresh),
          elevation: 3,
        ),
      ),
    );
  }
}
