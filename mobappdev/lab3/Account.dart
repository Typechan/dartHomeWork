import 'dart:math';

class Account{
  int accountNumber = 0;
  String holderName="";
  double balance = 0;

  Account(this.accountNumber, this.holderName, this.balance);
}

class CurrentAccount extends Account{
  double interestRate = 0;
  void calculateYearlyInterest(int years){
    print(pow(interestRate, years));
  }
  CurrentAccount(super.accountNumber, super.holderName, super.balance);

}