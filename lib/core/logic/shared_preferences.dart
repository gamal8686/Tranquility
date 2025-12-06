import 'package:shared_preferences/shared_preferences.dart';


class CashHelper {
 static late SharedPreferences preferences;
 static Future<void>init()async{
    preferences= await SharedPreferences.getInstance();

  }
static  void setIsNotFirst(){
    preferences.setBool('isFirst', false);

  }
static bool get getIsNotFirst{
    return preferences.getBool('isFirst')??true;
 }






}