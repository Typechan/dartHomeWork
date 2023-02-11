import 'Publication.dart';

class Integers{
  List<int> numbers = new List.empty(growable: true);
  int index = 0;

  void push(int a){
    numbers.add(a);
    index++;
  }

  void pop(){
    numbers[index] = 0;
    if(index>0){
      index--;
    }
  }

  void print1(){
    for(int i in numbers){
      print(i);
    }
  }
}

class BankAccount{
  int AccountID = 0;
  double balance = 0;
  String OwnerName = "";
  BankAccount(this.AccountID, this.balance, this.OwnerName);

  void showBalance(){
    print("Balance: $balance");
  }

  void add(double a){
    balance +=a;
  }

  void subtract(double a){
    balance-=a;
  }
}

class AccountManager{
  List<BankAccount> bankAccounts = new List.empty(growable: true);
   void create(int AccountID, double balance, String OwnerName){
     bankAccounts.add(new BankAccount(AccountID, balance, OwnerName));
   }

   void delete(int AccountID){
     for(BankAccount bank in bankAccounts){
       if(bank.AccountID==AccountID){
         bankAccounts.remove(bank);
         return;
       }
     }
   }

   void deposit(int AccountID, double depo){
     for(BankAccount bank in bankAccounts){
       if(bank.AccountID==AccountID){
         bank.add(depo);
         return;
       }
     }
   }

   void withdraw(int AccountID, double draw){
     for(BankAccount bank in bankAccounts){
       if(bank.AccountID==AccountID){
         bank.subtract(draw);
         return;
       }
     }
   }

   void printEverything(){
     for(BankAccount b in bankAccounts){
       print("${b.AccountID} Имя владельца аккаунта: ${b.OwnerName} Денег на счету: ${b.balance}");
     }
   }

   defaultSettings(){
     create(bankAccounts.length, 1000, "Nikita");
     create(bankAccounts.length, 2000, "Zhenya");
     create(bankAccounts.length, 3000, "Ruslan");
     create(bankAccounts.length, 4000, "Alisher");
     create(bankAccounts.length, 5000, "Aruzhan");
   }
}
/*AccountManager AM= new AccountManager();
  AM.defaultSettings();
  AM.printEverything();
  AM.withdraw(4, 3000);
  AM.printEverything();*/




void main(){

}