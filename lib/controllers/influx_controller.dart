import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:nps_webapp/helpers/influx_services.dart';

import '../models/chart_data.dart';

class InfluxController extends GetxController {
  var dataListPM2_5 = <ChartData>[].obs;
  var dataListPM10 = <ChartData>[].obs;
  var dataListTemp = <ChartData>[].obs;
  var dataListHumidty = <ChartData>[].obs;
  var dataListSound = <ChartData>[].obs;
  var temp = 0.obs;
  var pm25 = 0.obs;
  var pm10 = 0.obs;
  var humidity = 0.obs;
  var sound = 0.obs;

  @override
  void onInit() async {
    fetchData();
    updateData();
    var _timer = new Timer.periodic(Duration(seconds: 1), (_) => updateData());
    super.onInit();
  }

  void fetchData() async {
    var dataTemp = await DataServices.fetchDataTemp();
    var dataPM2_5 = await DataServices.fetchDataPM25();
    var dataPM10 = await DataServices.fetchDataPM10();
    var dataHumidity = await DataServices.fetchDataHumidity();
    var dataSound = await DataServices.fetchDataSound();
    dataListTemp.value = dataTemp;
    dataListPM2_5.value = dataPM2_5;
    dataListPM10.value = dataPM10;
    dataListSound.value = dataSound;
    dataListHumidty.value = dataHumidity;
  }

  void updateData() async {
    updateTemp();
    updateHumidity();
    updatePM10();
    updatePM25();
    updateSound();
    fetchData();
  }

  void updateTemp() async {
    var tempData = await DataServices.getTemp();
    if (tempData != -1) {
      temp.value = tempData;
    }
  }

  void updateHumidity() async {
    var humidityData = await DataServices.getHumidity();
    if (humidityData != -1) {
      humidity.value = humidityData;
    }
  }

  void updatePM10() async {
    var pm10Data = await DataServices.getPM10();
    if (pm10Data != -1) {
      pm10.value = pm10Data;
    }
  }

  void updatePM25() async {
    var pm25Data = await DataServices.getPM25();
    if (pm25Data != -1) {
      pm25.value = pm25Data;
    }
  }

  void updateSound() async {
    var soundData = await DataServices.getSound();
    if (soundData != -1) {
      sound.value = soundData;
    }
  }
}
