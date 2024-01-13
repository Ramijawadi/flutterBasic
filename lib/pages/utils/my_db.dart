import 'package:hive/hive.dart';

class MyDB{

static Box myHive = Hive.box('mybox');

static dynamic getData(String key){
 
return myHive.get(key);
}

static void setData(String key, dyna){
 myHive.put(key,dynamic);
}

}