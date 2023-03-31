class BankAccount{

  double _balance;
  //static members
  static int numOfObjects = 0;

  BankAccount({required double balance}) : 
  _balance = balance {
    numOfObjects++;
  } // default constructor

  // named constructors
  // BankAccount.newClient() : _balance = 0 {
  //   numOfObjects++;
  // }
  // BankAccount.vipClient(double startAmount) : 
  // _balance = startAmount + 1.21 {
  //   numOfObjects++;
  // }

  set balance(double balance) => _balance = balance;

  void deposit(double amount) => _balance += amount;

  void withdraw(double amount){
    if (_balance > amount) {
      _balance -= amount;
      print('You withdrew \$${amount}');
    }
    else print('Insufficient funds');
  }

  double get balance => _balance;
}