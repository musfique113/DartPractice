abstract class Account {
  late int accountNumber;
  late double balance;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  late double interestRate;

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance *= (1 + interestRate);
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;

  @override
  void withdraw(double amount) {
    if (amount > overdraftLimit) {
      print("Insufficient funds");
    } else {
      balance -= amount;
    }
  }
}

void main() {
  // Create an instance of the SavingsAccount class
  SavingsAccount savingsAccount =  SavingsAccount();
  savingsAccount.accountNumber = 96837;
  savingsAccount.balance = 1001;
  savingsAccount.interestRate = 0.09;

  // Deposit money into the savings account
  savingsAccount.deposit(500);

  // Withdraw money from the savings account
  savingsAccount.withdraw(200);

  // Print the balance of the savings account
  print(savingsAccount.balance); 

  // Create an instance of the CurrentAccount class
  CurrentAccount currentAccount =  CurrentAccount();
  currentAccount.accountNumber = 789012;
  currentAccount.balance = 500;
  currentAccount.overdraftLimit = 500;

  // Deposit money
  currentAccount.deposit(200);

  // Withdraw money 
  currentAccount.withdraw(700);

  // current account
  print(currentAccount.balance); // 
}
