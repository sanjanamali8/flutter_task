import 'dart:developer';

import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

enum AppState {
  initial,
  loading,
  loaded,
}

class AppController extends GetxController {
  var data = {}.obs;
  var state = AppState.initial.obs;

  get isInitial => state.value == AppState.initial;
  get isLoading => state.value == AppState.loading;
  get isLoaded => state.value == AppState.loaded;

  Future<void> getData() async {
    try {
      state.value = AppState.loading;
      state.refresh();
      final url = Uri.parse('http://10.0.2.2:5001/get_data');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        data.value = json.decode(response.body);
        data.refresh();
        state.value = AppState.loaded;
        state.refresh();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void resetState() {
    state.value = AppState.initial;
  }
}
