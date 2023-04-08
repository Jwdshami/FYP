


import 'package:agfow/ui/Dashboard/home_pages/const/strings.dart';
import 'package:agfow/ui/Dashboard/home_pages/models/currentweathermodel.dart';
// import 'package:agfow/ui/Dashboard/home_pages/models/hourlyweathermodel.dart';
import 'package:http/http.dart' as http;


var data = currentWeatherDataFromJson;
getCurrentWeather() async {
  var link = "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
       data=res.body as CurrentWeatherData Function(String str);


       print("han data receive hua?");
    return data;

  }else{
    print('data reeceive mo hua');
  }

}

// getHourlyWeather(lat, long) async {
//   var link = "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&appid=$apiKey&units=metric";
//   var res = await http.get(Uri.parse(link));
//   if (res.statusCode == 200) {
//     var data = hourlyWeatherDataFromJson(res.body.toString());
//
//     return data;
//   }
// }

