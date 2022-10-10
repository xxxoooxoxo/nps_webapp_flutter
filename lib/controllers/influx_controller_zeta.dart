import 'dart:async';
import 'package:get/state_manager.dart';
import 'package:nps_webapp/helpers/influx_services.dart';
import '../models/chart_data.dart';

class InfluxControllerZeta extends GetxController {
  //
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
  var node = "zeta";

  @override
  void onInit() async {
    fetchData();
    updateData();
    var _gaugeTimer =
        new Timer.periodic(Duration(seconds: 3), (_) => updateData());
    var _graphTimer =
        new Timer.periodic(Duration(seconds: 90), (_) => fetchData());
    super.onInit();
  }

  void fetchData() async {
    var dataTemp = await DataServices.fetchDataTemp(node);
    var dataPM2_5 = await DataServices.fetchDataPM25(node);
    var dataPM10 = await DataServices.fetchDataPM10(node);
    var dataHumidity = await DataServices.fetchDataHumidity(node);
    var dataSound = await DataServices.fetchDataSound(node);
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
    // fetchData();
  }

  void updateTemp() async {
    var tempData = await DataServices.getTemp(node);
    if (tempData != -1) {
      temp.value = tempData;
    }
  }

  void updateHumidity() async {
    var humidityData = await DataServices.getHumidity(node);
    if (humidityData != -1) {
      humidity.value = humidityData;
    }
  }

  void updatePM10() async {
    var pm10Data = await DataServices.getPM10(node);
    if (pm10Data != -1) {
      pm10.value = pm10Data;
    }
  }

  void updatePM25() async {
    var pm25Data = await DataServices.getPM25(node);
    if (pm25Data != -1) {
      pm25.value = pm25Data;
    }
  }

  void updateSound() async {
    var soundData = await DataServices.getSound(node);
    if (soundData != -1) {
      sound.value = soundData;
    }
  }
}
