import 'dart:convert';
import 'dart:io';

class HttpUtils {
  void getDataByGET() async {
    var http = HttpClient();
    var uri = Uri.parse("https://httpbin.org/ip");
    var request = await http.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    http.close();
    Map data = json.decode(responseBody);

    data.forEach((key, value) {
      print("key:$key-value:$value");
    });
  }
}

void main() {
  HttpUtils().getDataByGET();
}
