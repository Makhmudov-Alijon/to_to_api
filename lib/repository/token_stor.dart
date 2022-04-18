import 'package:hive/hive.dart';

class TokenStroge{
  final box = Hive.box('token');
 void settoken(String token){
    box.put('token', token);
  }
 String gettoken(){
  return  box.get('token');
  }
 void deletetoken(){
    box.clear();
  }
}