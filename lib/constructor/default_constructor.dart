/* Default Constructor */
void main() {
  final account1 = Account("べいびー", 1);
  print(account1.name);
}

class Account {
  // final や required つけない
  String name;
  int age;

  // const つけない
  Account(this.name, this.age);
}


/**
 * 結果
 * 
 * べいびー
 */
