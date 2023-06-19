import 'location.dart';
import 'networking.dart';

//API Token to get access to openweather data
const APIkey = '15d967d9f2604d7bb04151819230406';

//URL for openWeather
const openWeatherURL = 'http://api.weatherapi.com/v1/forecast.json?key=';

class WeatherModel {
  //getLocationWeather method
  Future<dynamic> getLocationWeather() async {
    //create Location class's object before able to use
    Location myLocation = Location();

    // //request location from user to get longtitude and longtitude
    await myLocation.getLocation();

    //create NetworkHelper class's object before able to use (require url from openWeather with input longtitude, latitude properties and API key constant)
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherURL$APIkey&q=${myLocation.latitude}, ${myLocation.longitude}&days=2&aqi=yes&alerts=no');

    //call the getData method to get the reponse body and store it inside var getNetworkData
    var getNetworkData = await networkHelper.getData();
    return getNetworkData;
  }
}
