
abstract class Fruit{
  int getAppleSize();
}

class Apple extends Fruit{
  String fruitName = "苹果";
  int fruitSize = 35;
  @override
  int getAppleSize() {
    return fruitSize;
  }
  void printMyName<T>(T t){
    if(t is String){
      print('输出我的信息$t');
    }if (t is List){
      t.forEach((element) {print('$element');});
    }else{
      print('我是水果$fruitName');
    }
  }

}


void main(){
  List list = ['香蕉'];
  list.add('苹果');
  list.add('葡萄');
  list.add('黄瓜');
  // for(var i = 0;i< list.length;i++){
  //   print('第$i个:${list[i]}');
  // }

  Apple fruit = Apple();
  print("=====${fruit.getAppleSize()}");
  fruit.printMyName(list);

}