import 'package:flutter/material.dart';
import 'package:fcweather/components/weather.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreen({required this.locationWeather});

  final locationWeather;
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherModel weatherModel = WeatherModel();

  //current
  var localtimeMsg;
  String? cityMsg;
  String? regionMsg;
  String? weatherimgMsg;
  int? temperatureMsg;
  String? weatherMsg;
  int? windMsg;
  int? ipuMsg;
  int? humidityMsg;

  //forecast day1
  int? ftemperature1hour00Msg;
  String? fweatherimg1hour00Msg;
  int? ftemperature1hour01Msg;
  String? fweatherimg1hour01Msg;
  int? ftemperature1hour02Msg;
  String? fweatherimg1hour02Msg;
  int? ftemperature1hour03Msg;
  String? fweatherimg1hour03Msg;
  int? ftemperature1hour04Msg;
  String? fweatherimg1hour04Msg;
  int? ftemperature1hour05Msg;
  String? fweatherimg1hour05Msg;
  int? ftemperature1hour06Msg;
  String? fweatherimg1hour06Msg;
  int? ftemperature1hour07Msg;
  String? fweatherimg1hour07Msg;
  int? ftemperature1hour08Msg;
  String? fweatherimg1hour08Msg;
  int? ftemperature1hour09Msg;
  String? fweatherimg1hour09Msg;
  int? ftemperature1hour10Msg;
  String? fweatherimg1hour10Msg;
  int? ftemperature1hour11Msg;
  String? fweatherimg1hour11Msg;
  int? ftemperature1hour12Msg;
  String? fweatherimg1hour12Msg;
  int? ftemperature1hour13Msg;
  String? fweatherimg1hour13Msg;
  int? ftemperature1hour14Msg;
  String? fweatherimg1hour14Msg;
  int? ftemperature1hour15Msg;
  String? fweatherimg1hour15Msg;
  int? ftemperature1hour16Msg;
  String? fweatherimg1hour16Msg;
  int? ftemperature1hour17Msg;
  String? fweatherimg1hour17Msg;
  int? ftemperature1hour18Msg;
  String? fweatherimg1hour18Msg;
  int? ftemperature1hour19Msg;
  String? fweatherimg1hour19Msg;
  int? ftemperature1hour20Msg;
  String? fweatherimg1hour20Msg;
  int? ftemperature1hour21Msg;
  String? fweatherimg1hour21Msg;
  int? ftemperature1hour22Msg;
  String? fweatherimg1hour22Msg;
  int? ftemperature1hour23Msg;
  String? fweatherimg1hour23Msg;

  //forecast day2
  int? ftemperature2hour00Msg;
  String? fweatherimg2hour00Msg;
  int? ftemperature2hour01Msg;
  String? fweatherimg2hour01Msg;
  int? ftemperature2hour02Msg;
  String? fweatherimg2hour02Msg;
  int? ftemperature2hour03Msg;
  String? fweatherimg2hour03Msg;
  int? ftemperature2hour04Msg;
  String? fweatherimg2hour04Msg;
  int? ftemperature2hour05Msg;
  String? fweatherimg2hour05Msg;
  int? ftemperature2hour06Msg;
  String? fweatherimg2hour06Msg;
  int? ftemperature2hour07Msg;
  String? fweatherimg2hour07Msg;
  int? ftemperature2hour08Msg;
  String? fweatherimg2hour08Msg;
  int? ftemperature2hour09Msg;
  String? fweatherimg2hour09Msg;
  int? ftemperature2hour10Msg;
  String? fweatherimg2hour10Msg;
  int? ftemperature2hour11Msg;
  String? fweatherimg2hour11Msg;
  int? ftemperature2hour12Msg;
  String? fweatherimg2hour12Msg;
  int? ftemperature2hour13Msg;
  String? fweatherimg2hour13Msg;
  int? ftemperature2hour14Msg;
  String? fweatherimg2hour14Msg;
  int? ftemperature2hour15Msg;
  String? fweatherimg2hour15Msg;
  int? ftemperature2hour16Msg;
  String? fweatherimg2hour16Msg;
  int? ftemperature2hour17Msg;
  String? fweatherimg2hour17Msg;
  int? ftemperature2hour18Msg;
  String? fweatherimg2hour18Msg;
  int? ftemperature2hour19Msg;
  String? fweatherimg2hour19Msg;
  int? ftemperature2hour20Msg;
  String? fweatherimg2hour20Msg;
  int? ftemperature2hour21Msg;
  String? fweatherimg2hour21Msg;
  int? ftemperature2hour22Msg;
  String? fweatherimg2hour22Msg;
  int? ftemperature2hour23Msg;
  String? fweatherimg2hour23Msg;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic getNetworkData) {
    setState(() {
      if (getNetworkData == null) {
        //current
        localtimeMsg = 'Date time not found';
        cityMsg = 'Location not found';
        weatherimgMsg = 'img/113.png';
        temperatureMsg = 0;
        weatherMsg = 'Unable to provide location data';
        windMsg = 0;
        ipuMsg = 0;
        humidityMsg = 0;

        //forecast day 1
        ftemperature1hour00Msg = 0;
        fweatherimg1hour00Msg = 'img/113.png';
        ftemperature1hour01Msg = 0;
        fweatherimg1hour01Msg = 'img/113.png';
        ftemperature1hour02Msg = 0;
        fweatherimg1hour02Msg = 'img/113.png';
        ftemperature1hour03Msg = 0;
        fweatherimg1hour03Msg = 'img/113.png';
        ftemperature1hour04Msg = 0;
        fweatherimg1hour04Msg = 'img/113.png';
        ftemperature1hour05Msg = 0;
        fweatherimg1hour05Msg = 'img/113.png';
        ftemperature1hour06Msg = 0;
        fweatherimg1hour06Msg = 'img/113.png';
        ftemperature1hour07Msg = 0;
        fweatherimg1hour07Msg = 'img/113.png';
        ftemperature1hour08Msg = 0;
        fweatherimg1hour08Msg = 'img/113.png';
        ftemperature1hour09Msg = 0;
        fweatherimg1hour09Msg = 'img/113.png';
        ftemperature1hour10Msg = 0;
        fweatherimg1hour10Msg = 'img/113.png';
        ftemperature1hour11Msg = 0;
        fweatherimg1hour11Msg = 'img/113.png';
        ftemperature1hour12Msg = 0;
        fweatherimg1hour12Msg = 'img/113.png';
        ftemperature1hour13Msg = 0;
        fweatherimg1hour13Msg = 'img/113.png';
        ftemperature1hour14Msg = 0;
        fweatherimg1hour14Msg = 'img/113.png';
        ftemperature1hour15Msg = 0;
        fweatherimg1hour15Msg = 'img/113.png';
        ftemperature1hour16Msg = 0;
        fweatherimg1hour16Msg = 'img/113.png';
        ftemperature1hour17Msg = 0;
        fweatherimg1hour17Msg = 'img/113.png';
        ftemperature1hour18Msg = 0;
        fweatherimg1hour18Msg = 'img/113.png';
        ftemperature1hour19Msg = 0;
        fweatherimg1hour19Msg = 'img/113.png';
        ftemperature1hour20Msg = 0;
        fweatherimg1hour20Msg = 'img/113.png';
        ftemperature1hour21Msg = 0;
        fweatherimg1hour21Msg = 'img/113.png';
        ftemperature1hour22Msg = 0;
        fweatherimg1hour22Msg = 'img/113.png';
        ftemperature1hour23Msg = 0;
        fweatherimg1hour23Msg = 'img/113.png';

        //forecast day 2
        ftemperature2hour00Msg = 0;
        fweatherimg2hour00Msg = 'img/113.png';
        ftemperature2hour01Msg = 0;
        fweatherimg2hour01Msg = 'img/113.png';
        ftemperature2hour02Msg = 0;
        fweatherimg2hour02Msg = 'img/113.png';
        ftemperature2hour03Msg = 0;
        fweatherimg2hour03Msg = 'img/113.png';
        ftemperature2hour04Msg = 0;
        fweatherimg2hour04Msg = 'img/113.png';
        ftemperature2hour05Msg = 0;
        fweatherimg2hour05Msg = 'img/113.png';
        ftemperature2hour06Msg = 0;
        fweatherimg2hour06Msg = 'img/113.png';
        ftemperature2hour07Msg = 0;
        fweatherimg2hour07Msg = 'img/113.png';
        ftemperature2hour08Msg = 0;
        fweatherimg2hour08Msg = 'img/113.png';
        ftemperature2hour09Msg = 0;
        fweatherimg2hour09Msg = 'img/113.png';
        ftemperature2hour10Msg = 0;
        fweatherimg2hour10Msg = 'img/113.png';
        ftemperature2hour11Msg = 0;
        fweatherimg2hour11Msg = 'img/113.png';
        ftemperature2hour12Msg = 0;
        fweatherimg2hour12Msg = 'img/113.png';
        ftemperature2hour13Msg = 0;
        fweatherimg2hour13Msg = 'img/113.png';
        ftemperature2hour14Msg = 0;
        fweatherimg2hour14Msg = 'img/113.png';
        ftemperature2hour15Msg = 0;
        fweatherimg2hour15Msg = 'img/113.png';
        ftemperature2hour16Msg = 0;
        fweatherimg2hour16Msg = 'img/113.png';
        ftemperature2hour17Msg = 0;
        fweatherimg2hour17Msg = 'img/113.png';
        ftemperature2hour18Msg = 0;
        fweatherimg2hour18Msg = 'img/113.png';
        ftemperature2hour19Msg = 0;
        fweatherimg2hour19Msg = 'img/113.png';
        ftemperature2hour20Msg = 0;
        fweatherimg2hour20Msg = 'img/113.png';
        ftemperature2hour21Msg = 0;
        fweatherimg2hour21Msg = 'img/113.png';
        ftemperature2hour22Msg = 0;
        fweatherimg2hour22Msg = 'img/113.png';
        ftemperature2hour23Msg = 0;
        fweatherimg2hour23Msg = 'img/113.png';
      }
      //current
      localtimeMsg = getNetworkData['location']['localtime'];
      cityMsg = getNetworkData['location']['name'];
      regionMsg = getNetworkData['location']['region'];
      weatherimgMsg = getNetworkData['current']['condition']['icon'];
      double temp = getNetworkData['current']['temp_c'];
      temperatureMsg = temp.toInt();
      weatherMsg = getNetworkData['current']['condition']['text'];
      double wind = getNetworkData['current']['wind_kph'];
      windMsg = wind.toInt();
      double ipu = getNetworkData['current']['air_quality']['o3'];
      ipuMsg = ipu.toInt();
      humidityMsg = getNetworkData['current']['humidity'];

      //forecast day 1
      //00:00
      double forecasttemp1 =
          getNetworkData['forecast']['forecastday'][0]['hour'][0]['temp_c'];
      ftemperature1hour00Msg = forecasttemp1.toInt();
      fweatherimg1hour00Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][0]['condition']['icon'];

      //01:00
      double forecasttemp2 =
          getNetworkData['forecast']['forecastday'][0]['hour'][1]['temp_c'];
      ftemperature1hour01Msg = forecasttemp2.toInt();
      fweatherimg1hour01Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][1]['condition']['icon'];

      //02:00
      double forecasttemp3 =
          getNetworkData['forecast']['forecastday'][0]['hour'][2]['temp_c'];
      ftemperature1hour02Msg = forecasttemp3.toInt();
      fweatherimg1hour02Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][2]['condition']['icon'];

      //03:00
      double forecasttemp4 =
          getNetworkData['forecast']['forecastday'][0]['hour'][3]['temp_c'];
      ftemperature1hour03Msg = forecasttemp4.toInt();
      fweatherimg1hour03Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][3]['condition']['icon'];

      //04:00
      double forecasttemp5 =
          getNetworkData['forecast']['forecastday'][0]['hour'][4]['temp_c'];
      ftemperature1hour04Msg = forecasttemp5.toInt();
      fweatherimg1hour04Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][4]['condition']['icon'];

      //05:00
      double forecasttemp6 =
          getNetworkData['forecast']['forecastday'][0]['hour'][5]['temp_c'];
      ftemperature1hour05Msg = forecasttemp6.toInt();
      fweatherimg1hour05Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][5]['condition']['icon'];

      //06:00
      double forecasttemp7 =
          getNetworkData['forecast']['forecastday'][0]['hour'][6]['temp_c'];
      ftemperature1hour06Msg = forecasttemp7.toInt();
      fweatherimg1hour06Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][6]['condition']['icon'];

      //07:00
      double forecasttemp8 =
          getNetworkData['forecast']['forecastday'][0]['hour'][7]['temp_c'];
      ftemperature1hour07Msg = forecasttemp8.toInt();
      fweatherimg1hour07Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][7]['condition']['icon'];

      //08:00
      double forecasttemp9 =
          getNetworkData['forecast']['forecastday'][0]['hour'][8]['temp_c'];
      ftemperature1hour08Msg = forecasttemp9.toInt();
      fweatherimg1hour08Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][8]['condition']['icon'];

      //09:00
      double forecasttemp10 =
          getNetworkData['forecast']['forecastday'][0]['hour'][9]['temp_c'];
      ftemperature1hour09Msg = forecasttemp10.toInt();
      fweatherimg1hour09Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][9]['condition']['icon'];

      //10:00
      double forecasttemp11 =
          getNetworkData['forecast']['forecastday'][0]['hour'][10]['temp_c'];
      ftemperature1hour10Msg = forecasttemp11.toInt();
      fweatherimg1hour10Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][10]['condition']['icon'];

      //11:00
      double forecasttemp12 =
          getNetworkData['forecast']['forecastday'][0]['hour'][11]['temp_c'];
      ftemperature1hour11Msg = forecasttemp12.toInt();
      fweatherimg1hour11Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][11]['condition']['icon'];

      //12:00
      double forecasttemp13 =
          getNetworkData['forecast']['forecastday'][0]['hour'][12]['temp_c'];
      ftemperature1hour12Msg = forecasttemp13.toInt();
      fweatherimg1hour12Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][12]['condition']['icon'];

      //13:00
      double forecasttemp14 =
          getNetworkData['forecast']['forecastday'][0]['hour'][13]['temp_c'];
      ftemperature1hour13Msg = forecasttemp14.toInt();
      fweatherimg1hour13Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][13]['condition']['icon'];

      //14:00
      double forecasttemp15 =
          getNetworkData['forecast']['forecastday'][0]['hour'][14]['temp_c'];
      ftemperature1hour14Msg = forecasttemp15.toInt();
      fweatherimg1hour14Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][14]['condition']['icon'];

      //15:00
      double forecasttemp16 =
          getNetworkData['forecast']['forecastday'][0]['hour'][15]['temp_c'];
      ftemperature1hour15Msg = forecasttemp16.toInt();
      fweatherimg1hour15Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][15]['condition']['icon'];

      //16:00
      double forecasttemp17 =
          getNetworkData['forecast']['forecastday'][0]['hour'][16]['temp_c'];
      ftemperature1hour16Msg = forecasttemp17.toInt();
      fweatherimg1hour16Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][16]['condition']['icon'];

      //17:00
      double forecasttemp18 =
          getNetworkData['forecast']['forecastday'][0]['hour'][17]['temp_c'];
      ftemperature1hour17Msg = forecasttemp18.toInt();
      fweatherimg1hour17Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][17]['condition']['icon'];

      //18:00
      double forecasttemp19 =
          getNetworkData['forecast']['forecastday'][0]['hour'][18]['temp_c'];
      ftemperature1hour18Msg = forecasttemp19.toInt();
      fweatherimg1hour18Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][18]['condition']['icon'];

      //19:00
      double forecasttemp20 =
          getNetworkData['forecast']['forecastday'][0]['hour'][19]['temp_c'];
      ftemperature1hour19Msg = forecasttemp20.toInt();
      fweatherimg1hour19Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][19]['condition']['icon'];

      //20:00
      double forecasttemp21 =
          getNetworkData['forecast']['forecastday'][0]['hour'][20]['temp_c'];
      ftemperature1hour20Msg = forecasttemp21.toInt();
      fweatherimg1hour20Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][20]['condition']['icon'];

      //21:00
      double forecasttemp22 =
          getNetworkData['forecast']['forecastday'][0]['hour'][21]['temp_c'];
      ftemperature1hour21Msg = forecasttemp22.toInt();
      fweatherimg1hour21Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][2]['condition']['icon'];

      //22:00
      double forecasttemp23 =
          getNetworkData['forecast']['forecastday'][0]['hour'][22]['temp_c'];
      ftemperature1hour22Msg = forecasttemp23.toInt();
      fweatherimg1hour22Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][22]['condition']['icon'];

      //23:00
      double forecasttemp24 =
          getNetworkData['forecast']['forecastday'][0]['hour'][23]['temp_c'];
      ftemperature1hour23Msg = forecasttemp24.toInt();
      fweatherimg1hour23Msg = getNetworkData['forecast']['forecastday'][0]
          ['hour'][23]['condition']['icon'];

      //forecast day 2
      //00:00
      double forecast2temp1 =
          getNetworkData['forecast']['forecastday'][1]['hour'][0]['temp_c'];
      ftemperature2hour00Msg = forecast2temp1.toInt();
      fweatherimg2hour00Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][0]['condition']['icon'];

      //01:00
      double forecast2temp2 =
          getNetworkData['forecast']['forecastday'][1]['hour'][1]['temp_c'];
      ftemperature2hour01Msg = forecast2temp2.toInt();
      fweatherimg2hour01Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][1]['condition']['icon'];

      //02:00
      double forecast2temp3 =
          getNetworkData['forecast']['forecastday'][1]['hour'][2]['temp_c'];
      ftemperature2hour02Msg = forecast2temp3.toInt();
      fweatherimg2hour02Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][2]['condition']['icon'];

      //03:00
      double forecast2temp4 =
          getNetworkData['forecast']['forecastday'][1]['hour'][3]['temp_c'];
      ftemperature2hour03Msg = forecast2temp4.toInt();
      fweatherimg2hour03Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][3]['condition']['icon'];

      //04:00
      double forecast2temp5 =
          getNetworkData['forecast']['forecastday'][1]['hour'][4]['temp_c'];
      ftemperature2hour04Msg = forecast2temp5.toInt();
      fweatherimg2hour04Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][4]['condition']['icon'];

      //05:00
      double forecast2temp6 =
          getNetworkData['forecast']['forecastday'][1]['hour'][5]['temp_c'];
      ftemperature2hour05Msg = forecast2temp6.toInt();
      fweatherimg2hour05Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][5]['condition']['icon'];

      //06:00
      double forecast2temp7 =
          getNetworkData['forecast']['forecastday'][1]['hour'][6]['temp_c'];
      ftemperature2hour06Msg = forecast2temp7.toInt();
      fweatherimg2hour06Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][6]['condition']['icon'];

      //07:00
      double forecast2temp8 =
          getNetworkData['forecast']['forecastday'][1]['hour'][7]['temp_c'];
      ftemperature2hour07Msg = forecast2temp8.toInt();
      fweatherimg2hour07Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][7]['condition']['icon'];

      //08:00
      double forecast2temp9 =
          getNetworkData['forecast']['forecastday'][1]['hour'][8]['temp_c'];
      ftemperature2hour08Msg = forecast2temp9.toInt();
      fweatherimg2hour08Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][8]['condition']['icon'];

      //09:00
      double forecast2temp10 =
          getNetworkData['forecast']['forecastday'][1]['hour'][9]['temp_c'];
      ftemperature2hour09Msg = forecast2temp10.toInt();
      fweatherimg2hour09Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][9]['condition']['icon'];

      //10:00
      double forecast2temp11 =
          getNetworkData['forecast']['forecastday'][1]['hour'][10]['temp_c'];
      ftemperature2hour10Msg = forecast2temp11.toInt();
      fweatherimg2hour10Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][10]['condition']['icon'];

      //11:00
      double forecast2temp12 =
          getNetworkData['forecast']['forecastday'][1]['hour'][11]['temp_c'];
      ftemperature2hour11Msg = forecast2temp12.toInt();
      fweatherimg2hour11Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][11]['condition']['icon'];

      //12:00
      double forecast2temp13 =
          getNetworkData['forecast']['forecastday'][1]['hour'][12]['temp_c'];
      ftemperature2hour12Msg = forecast2temp13.toInt();
      fweatherimg2hour12Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][12]['condition']['icon'];

      //13:00
      double forecast2temp14 =
          getNetworkData['forecast']['forecastday'][1]['hour'][13]['temp_c'];
      ftemperature2hour13Msg = forecast2temp14.toInt();
      fweatherimg2hour13Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][13]['condition']['icon'];

      //14:00
      double forecast2temp15 =
          getNetworkData['forecast']['forecastday'][1]['hour'][14]['temp_c'];
      ftemperature2hour14Msg = forecast2temp15.toInt();
      fweatherimg2hour14Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][14]['condition']['icon'];

      //15:00
      double forecast2temp16 =
          getNetworkData['forecast']['forecastday'][1]['hour'][15]['temp_c'];
      ftemperature2hour15Msg = forecast2temp16.toInt();
      fweatherimg2hour15Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][15]['condition']['icon'];

      //16:00
      double forecast2temp17 =
          getNetworkData['forecast']['forecastday'][1]['hour'][16]['temp_c'];
      ftemperature2hour16Msg = forecast2temp17.toInt();
      fweatherimg2hour16Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][16]['condition']['icon'];

      //17:00
      double forecast2temp18 =
          getNetworkData['forecast']['forecastday'][1]['hour'][17]['temp_c'];
      ftemperature2hour17Msg = forecast2temp18.toInt();
      fweatherimg2hour17Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][17]['condition']['icon'];

      //18:00
      double forecast2temp19 =
          getNetworkData['forecast']['forecastday'][1]['hour'][18]['temp_c'];
      ftemperature2hour18Msg = forecast2temp19.toInt();
      fweatherimg2hour18Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][18]['condition']['icon'];

      //19:00
      double forecast2temp20 =
          getNetworkData['forecast']['forecastday'][1]['hour'][19]['temp_c'];
      ftemperature2hour19Msg = forecast2temp20.toInt();
      fweatherimg2hour19Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][19]['condition']['icon'];

      //20:00
      double forecast2temp21 =
          getNetworkData['forecast']['forecastday'][1]['hour'][20]['temp_c'];
      ftemperature2hour20Msg = forecast2temp21.toInt();
      fweatherimg2hour20Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][20]['condition']['icon'];

      //21:00
      double forecast2temp22 =
          getNetworkData['forecast']['forecastday'][1]['hour'][21]['temp_c'];
      ftemperature2hour21Msg = forecast2temp22.toInt();
      fweatherimg2hour21Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][2]['condition']['icon'];

      //22:00
      double forecast2temp23 =
          getNetworkData['forecast']['forecastday'][1]['hour'][22]['temp_c'];
      ftemperature2hour22Msg = forecast2temp23.toInt();
      fweatherimg2hour22Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][22]['condition']['icon'];

      //23:00
      double forecast2temp24 =
          getNetworkData['forecast']['forecastday'][1]['hour'][23]['temp_c'];
      ftemperature2hour23Msg = forecast2temp24.toInt();
      fweatherimg2hour23Msg = getNetworkData['forecast']['forecastday'][1]
          ['hour'][23]['condition']['icon'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111D3B),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //city and date
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '$localtimeMsg',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    '$cityMsg, $regionMsg',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              //30px sized box
              SizedBox(
                height: 30,
              ),
              //weather icon and temp
              Row(
                children: [
                  //icon
                  Expanded(
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFF25304C),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Image.network(
                          'http:$weatherimgMsg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  //text
                  Expanded(
                    child: Column(
                      children: [
                        //temp
                        Text(
                          '$temperatureMsg°C',
                          style: TextStyle(
                            fontSize: 60,
                            color: Color(0xFF85B4EA),
                          ),
                        ),
                        //sized box 5px
                        SizedBox(
                          height: 5,
                        ),
                        //weather info
                        Text(
                          '$weatherMsg',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //30px sized box
              SizedBox(
                height: 30,
              ),
              //wind, temp, humidity
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF25304C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    children: [
                      //wind
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Wind',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$windMsg km/h',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      //aqi
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'AQI',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$ipuMsg',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      //humidity
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$humidityMsg%',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //20px sized box
              SizedBox(
                height: 20,
              ),
              //info
              Center(
                child: Container(
                  height: 20,
                  child: Text(
                    'Weather Forecast',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //today
              Center(
                child: Container(
                  height: 30,
                  child: Text(
                    'Today',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //weather forecast today
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          //00:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour00Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour00Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '00:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //01:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour01Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour01Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '01:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //02:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour02Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour02Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '02:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //03:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour03Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour03Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '03:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //04:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour04Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour04Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '04:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //05:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour05Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour05Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '05:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //06:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour06Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour06Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '06:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //07:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour07Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour07Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '07:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //08:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour08Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour08Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '08:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //09:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour09Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour09Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '09:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //10:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour10Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour10Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '10:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //11:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour11Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour11Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '11:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //12:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour12Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour12Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '12:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //13:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour13Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour13Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '13:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //14:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour14Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour14Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '14:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //15:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour15Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour15Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '15:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //16:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour16Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour16Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '16:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //17:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour17Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour17Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '17:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //18:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour18Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour18Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '18:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //19:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour19Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour19Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '19:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //20:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour20Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour20Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '20:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //21:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour21Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour21Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '21:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //22:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour22Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour22Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '22:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //23:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg1hour23Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature1hour23Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '23:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //info
              Center(
                child: Container(
                  height: 20,
                  child: Text(
                    'Weather Forecast',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //tommorow
              Center(
                child: Container(
                  height: 30,
                  child: Text(
                    'Tommorow',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //weather forecast tommorow
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          //00:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour00Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour00Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '00:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //01:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour01Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour01Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '01:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //02:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour02Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour02Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '02:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //03:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour03Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour03Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '03:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //04:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour04Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour04Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '04:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //05:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour05Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour05Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '05:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //06:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour06Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour06Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '06:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //07:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour07Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour07Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '07:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //08:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour08Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour08Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '08:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //09:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour09Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour09Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '09:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //10:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour10Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour10Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '10:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //11:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour11Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour11Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '11:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //12:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour12Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour12Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '12:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //13:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour13Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour13Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '13:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //14:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour14Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour14Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '14:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //15:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour15Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour15Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '15:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //16:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour16Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour16Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '16:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //17:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour17Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour17Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '17:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //18:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour18Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour18Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '18:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //19:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour19Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour19Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '19:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //20:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour20Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour20Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '20:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //21:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour21Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour21Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '21:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //22:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour22Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour22Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '22:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //23:00
                          Container(
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF25304C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              children: [
                                //weather icon
                                Expanded(
                                  child: Container(
                                    child: Image.network(
                                      'http:$fweatherimg2hour23Msg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                //temp
                                Expanded(
                                  child: Text(
                                    '$ftemperature2hour23Msg°C',
                                    style: TextStyle(
                                        color: Color(0xFF85B4EA),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //time hourly
                                Expanded(
                                  child: Text(
                                    '23:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
