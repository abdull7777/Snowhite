import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:world_of_shopping/catroute.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../provider/catapi.dart';
import 'package:http/http.dart' as http;
import '../Model/user.dart';

class Httprequestss {
  static void get(BuildContext context) async {
    final response = await http.get(Uri.parse(
        'https://epulsecart.com/sky/public/api/v1/customer/category/get-all'));
    final decresponse = json.decode(response.body);
    // ApiCat cat = ApiCat();
    // cat.getcat(decresponse['data']);
    Provider.of<ApiCat>(context, listen: false).getcat(decresponse['data']);
  }

  static void post(BuildContext context, Map<String, dynamic> data) async {
    try {
      Map<String, String>? header = {
        "Content-Type": "application/json",
        "Accept": "*/*",
      };
      final encdata = json.encode(data);
      final sentdata = await http.post(
          Uri.parse(
              'https://epulsecart.com/sky/public/api/v1/auth-user/signin'),
          body: encdata,
          headers: header);
      int sc = sentdata.statusCode;
      if (sentdata.statusCode == 200 || sentdata.statusCode == 201) {
        final decbody = await jsonDecode(sentdata.body);
        print(decbody['data']);
        User buy = User.fromJson(decbody['data']);
        print(buy.token);
        final pref = await SharedPreferences.getInstance();
        await pref.setString('token', buy.token.toString());
        await pref.setString('name', buy.name.toString());
        final String? bname = pref.getString('name');
        final String? buytoken = pref.getString('token');
        Navigator.of(context).pushNamed('homepage');
      } else if (sentdata.statusCode == 403) {
        ResponseMessaage.awesomeDialog(
          context: context,
          dialogType: DialogType.error,
          message: " 403 Forbidden Response ",
          color: Color.fromARGB(255, 22, 54, 91),
        );
      } else {
        ResponseMessaage.awesomeDialog(
          context: context,
          dialogType: DialogType.error,
          message: " $sc ",
          color: Color.fromARGB(255, 22, 54, 91),
        );
      }
    } catch (e) {
      print('Error message :$e');
    }
  }
}
