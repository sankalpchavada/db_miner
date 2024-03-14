import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import '../model/quote_model.dart';

class QuoteController extends GetxController {



  RxList<Quote> quotes = <Quote>[].obs;
  RxBool isDarkMode = false.obs;
  int currentPage = 1;

  @override
  void onInit() {
    super.onInit();
    fetchQuotesFromApi();
  }

  Future<void> fetchQuotesFromApi() async {
    final response = await http.get(Uri.parse('https://api.quotable.io/quotes?page=$currentPage'));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> jsonList = jsonResponse['results'];
      quotes.addAll(jsonList.map((quote) => Quote.fromJson(quote)).toList());
    }
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }

  void loadNextPage() {
    currentPage++;
    fetchQuotesFromApi();
  }
}