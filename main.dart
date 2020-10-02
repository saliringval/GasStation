import 'dart:io';
void Payment(double price){
  print("Choose number only :") ;
  print("|1| Cash ") ;
  print("|2| Liter") ;
  print("Enter number only: ") ;
  var one = int.parse(stdin.readLineSync()); 
 
 switch(one){
 case 1:
    double total,totalSub;             
    print("You choose Cash");            
    print(price);
    print("How many Liters: ");
    var cash1 = double.parse(stdin.readLineSync());
             
    total = cash1*price;
    total = double.parse((total).toStringAsFixed(2));    
    print("Total Amount: $total");
    print("Cash Amount: ");
    var cashAmt = double.parse(stdin.readLineSync());
             
    if(cashAmt<total){
      print("Kulang imong wawart");               
    }
    else{
      totalSub = cashAmt - total;
      totalSub = double.parse((totalSub).toStringAsFixed(2));
      print("Change: $totalSub");
    }
    break;
  case 2:
    double Ltotal,LcashAmtTotal;            
    print("You choose Liter");            
    print(price);
    print("How many Liters: ");
    double lp = double.parse(stdin.readLineSync());
         
    Ltotal = lp*price;
    Ltotal = double.parse((Ltotal).toStringAsFixed(2));
    print("Payable: $Ltotal");
    print("Cash Amount: ");
    double lcshAm  = double.parse(stdin.readLineSync());
             
    if(lcshAm<Ltotal){
      print("Kulang imong wawart");               
    }
    else{
      LcashAmtTotal = lcshAm - Ltotal;
      LcashAmtTotal = double.parse((LcashAmtTotal).toStringAsFixed(2));
      print("Change: $LcashAmtTotal");
    }
    break;
  default:
    print("It's not in the option \n");
  }
}

void main() {
  var total;
  print("What kind of fuel ? ") ;
  print("|1| Leaded (1 Liter=₱ 45.75)") ;
  print("|2| Unleaded (1 Liter=₱ 43.18)") ;
  print("|3| Diesel (1 Liter=₱ 37.12)") ;
  print("|4| Bio-Diesel (1 Liter=₱ 48.03)") ;
  print("input number only: ");
  var fuel = int.parse(stdin.readLineSync());
  switch(fuel){
  case 1:
    print("Price of Leaded : ₱ 45.75");
    double L = 45.75;
    Payment(L);
    break;
  case 2:
    print("Price of Unleaded : ₱ 43.18");
    double U = 43.18;
    Payment(U);
    break;
  case 3:
    print("Price of Diesel : ₱ 37.12");
    double D = 37.12;
    Payment(D);
    break;
  case 4:
    print("Price of Bio-Diesel : ₱ 48.03");
    double B =  48.03;
    Payment(B);
    break;
  default:
    print("out of the option");
  }
}