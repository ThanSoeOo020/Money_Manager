class MoneyModel {
  String id;
  String category,description,type;
  int dateTime,amount;


  MoneyModel({ this.id,this.category,this.type,this.amount,this.description,this.dateTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,  
      'category':category,
      'type':type,
      'amount':amount,
      'description':description,
      'date_time':dateTime
    };
  }
}
