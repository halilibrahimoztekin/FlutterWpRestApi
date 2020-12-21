import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPots() async{
  var url="http://isoas.website/dietrecipes/wp-json/wp/v2/posts?_embed";
  final response = await http.get(url, headers:{"Accept":"application/json"} );
  var convertDataJson = jsonDecode(response.body);

  return convertDataJson;

}
Future<List> fetchWpMedia() async{
  var url="https://isoas.website/dietrecipes/wp-json/wp/v2/media?parent";
  final response = await http.get(url, headers:{"Accept":"application/json"} );
  var convertDataJson = jsonDecode(response.body);
  return convertDataJson;
}