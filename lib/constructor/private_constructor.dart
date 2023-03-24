/* Private Constructor */
void main() {
  // _ つけると外から呼べない！
  // final senior = Account('シニア',100);

  // 同じファイル内で _ をつけると（Named Constractor として）呼び出せる
  final senior = Account._('シニア', 100);

  print(senior.name);
}

class Account {
  // final や required つけない
  String name;
  int age;

  Account._(this.name, this.age);
}

/**
 * 結果
 * 
 * シニア
 */
