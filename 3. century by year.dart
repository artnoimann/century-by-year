void main() {
  //задача узнать век по году
  /*будет дан год, верните тот век, в котором он находится. 
   * Первый век охватывает период с 1 года до 100 года включительно, 
   * второй - с 101 года до 200 года включительно и т. д. 
    */
  
  //любой год 
  int year = 1900;

  //получили объект класса ListOperation
  var getmylistObj = ListOperation();
  print(getmylistObj.getCentury(year));

}

class ListOperation {
  double getNumberNoRound(double number) {
    return double.parse('$number'.substring(0, '$number'.indexOf('.')+1));
  }
  
  getCentury(int year){
    int yearL = year;
    double century;
    int sto = 100;
    
    if(year>0){
      if(yearL % sto == 0){
        century = yearL/sto;  
      }else{
        century = getNumberNoRound(yearL/sto)+1;
      }
    }else{
      century = 0;
    }
    return century;
  }
}
