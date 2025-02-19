import "bank_account_class.dart";

void main(List<String> arguments) {
  BankAccount account1 = BankAccount(0, 1234);
  print("Your account number is ${account1.accountNumber} \nand your balance: ${account1.accountBalance}");
  account1.deposit(100);
  account1.withdraw(200);
  account1.deposit(300);
  account1.withdraw(200);
  print("Now your balance is: ${account1.accountBalance}");
}
