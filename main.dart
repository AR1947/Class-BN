void main() {
  BankAccount account1 = BankAccount(accountNumber: 54612, balance: 1000.0, accountType: 'Savings', interestRate: 0.05);
  BankAccount account2 = BankAccount(accountNumber: 67890, balance: 500.0, accountType: 'Current', interestRate: 0.03);
  print("TASK 1");
  account1.deposit(500);
  account1.withdraw(200);
  account1.addInterest();
  account1.display();
  print("");
  account1.deposit(1000);
  account1.display();
  print("");
  account2.display();
  print("");
  account2.deposit(500);
  account2.withdraw(200);
  account2.addInterest();
  account2.display();
  
  Student student1 = Student(name: 'Rehman', id: '4404', courses: ['Physics', 'Maths']);
  Student student2 = Student(name: 'Ali', id: '4405', courses: ['Calculus', 'Probabiltiy']);
  print("TASK 2");
  student1.addCourse('Circuit Analysis');
  student1.dropCourse('Maths');
  student1.displayCourses();
  print("");
  student1.addCourse('MVC');
  student1.displayCourses();
  print("");
  student2.displayCourses();
  print("");
  student2.addCourse('Linear Algebra');
  student2.dropCourse('Calculus');
  student2.displayCourses();
}

class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  BankAccount({required this.accountNumber, required this.balance, required this.accountType, required this.interestRate});

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Cannot withdraw more than the current balance.');
    } else {
      balance -= amount;
    }
  }

  void addInterest() {
    balance += balance * interestRate;
  }

  void display() {
    print('Account Number: $accountNumber');
    print('Balance: $balance');
    print('Account Type: $accountType');
    print('Interest Rate: $interestRate');
  }
}

class Student {
  String name;
  String id;
  List<String> courses;

  Student({required this.name, required this.id, required this.courses});

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print('Name: $name');
    print('ID: $id');
    print('Courses: $courses');
  }
}



