//TODO: Add your imports here.
import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const apiKey = 'BAADD4F3-1B6D-45ED-A8F7-D5F8194922C8';

class CoinData {
  //TODO: Create your getCoinData() method here.
  CoinData({required this.currency});
  String currency;
  Future getCoinDataBTC() async {
    String coinAPIURL =
        'https://rest.coinapi.io/v1/exchangerate/${cryptoList[0]}/$currency?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(coinAPIURL));
    var decodedData = jsonDecode(response.body);
    return decodedData;
  }

  Future getCoinDataETH() async {
    String coinAPIURL =
        'https://rest.coinapi.io/v1/exchangerate/${cryptoList[1]}/$currency?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(coinAPIURL));
    var decodedData = jsonDecode(response.body);
    return decodedData;
  }

  Future getCoinDataLTC() async {
    String coinAPIURL =
        'https://rest.coinapi.io/v1/exchangerate/${cryptoList[2]}/$currency?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(coinAPIURL));
    var decodedData = jsonDecode(response.body);
    return decodedData;
  }
}
