import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sankalp/view/quote_detail.dart';

import '../main.dart';
import '../model/quote_model.dart';

class QuoteListTile extends StatelessWidget {
  final Quote quote;

  QuoteListTile({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.blueGrey,
      child: ListTile(
        title: Text(quote.content),
        subtitle: Text(quote.author),


        onTap: () {
          Get.to(() => QuoteDetailScreen(quote: quote));
        },
      ),
    );
  }
}