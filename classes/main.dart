import 'bank_account.dart';
import 'checkingAccount.dart';
import 'savingsAccount.dart';
import 'strings.dart';

void main(List<String> args) {
  BankAccount account = BankAccount(balance: 500.45);
  SavingsAccount savings = SavingsAccount(balance: 2000, rate: 10);
  CheckingAccount checking = CheckingAccount(balance: 10500);
  // BankAccount account1 = BankAccount.newClient();

  // BankAccount account2 = BankAccount.vipClient(50000);

  account.deposit(4000);
  savings.deposit(1500);
  savings.addInterest();
  
  checking.deposit(500);
  //account2.withdraw(45000);

  print(Strings.loading);
  print('Your account balance is \$${checking.balance.roundToDouble()}');

  print('Total number of accounts is: ${BankAccount.numOfObjects}');
}
