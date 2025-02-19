class BankAccount {
  double _accountBalance;
  int _accountNumber;

  BankAccount(this._accountBalance, this._accountNumber);

  double get accountBalance => _accountBalance;
  set accountBalance(value) => _accountBalance = value;
  int get accountNumber => _accountNumber;
  set accountNumber(value) => _accountNumber = value;

  deposit(value) => _accountBalance += value;
  withdraw(value) {
    if (_accountBalance > value) {
      _accountBalance -= value;
    } else {
      print("You don't have enough money in your balance");
    }
  }
}
