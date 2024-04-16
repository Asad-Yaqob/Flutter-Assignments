void main(){
  List myList = [1,2,3,4,5];
  List myColors = ["red","blue","green","yellow"];
  //myList.add("seven");
  //myList.addAll(myColors);
  //myList.insert(2, 4);
  myList.insertAll(1, myColors);
  myColors.reversed;
  print(myColors);
}