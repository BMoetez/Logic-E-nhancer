import 'dart:html';

class save{
  static Storage localStorage = window.localStorage;

  static void initsave(){
    localStorage['user'] = 'Moetez';
    localStorage["levels"] = '100000000000000000';
    localStorage['color_pref'] = '0';
  }

  static void setvalue(String key,String value){
    localStorage[key]=value;
  }

  static String getvalue(String key){
    if(localStorage.containsKey(key))
    return localStorage[key]!;
    else return '';
  }

  static bool exists(String key){
    for(String x in localStorage.values){
      if(x==localStorage[key]){
        return true;
      }
    }
    return false;
  }
}