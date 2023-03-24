/* Named Constructor */
void main() {
  final senior = Account.senior('シニア');
  print(senior.name);
}

class Account {
  final String name;
  final int age;

  // 実行するクラスのインスタンスしか生成できない
  // 任意のメンバ変数およびメソッドにアクセスできる
  // Factroy Constractor とインスタンス化のタイミングが違う
  Account.teen(this.name) : age = 10;

  // age = 20 が初期化文，これはインスタンス化の前までに呼ばれる
  Account.young(this.name) : age = 20;

  // インスタンスかされたあとに中身が実行される
  Account.senior(this.name) : age = 60 {
    print('seniorだよ');
    print(age);
  }
}


/**
 * 結果
 * 
 * seniorだよ
 * 60
 * シニア
 */
