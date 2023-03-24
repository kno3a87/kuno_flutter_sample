/* Factory Constructor */

// java は hogehoge.hogehoge.build の build でインスタンス化するので▼と似てる
// 既にインスタンス化されてたらそれを返すしなかったら作る => シングルトンでよく使う
// Flutter 内部では factory の方が良さそうでも named 使ってたり static メソッドで書かれてたりする
void main() {
  final senior = Account.fromJson({"name": "シニアおばば", "age": 78});
  print(senior.name);
}

class Account {
  final String name;
  final int age;

  Account(this.name, this.age);

  // 最後の return してるところでインスタンス化される <= だから絶対 return しなかん！
  factory Account.fromJson(Map<String, dynamic> json) {
    // 何かしらロジックをいじって値を return したいなら factory が必要（明示的にインスタンス返す必要がある）
    // 実行時にどのインスタンスを返すかを決めることができて，サブクラスのインスタンスも返すことができる
    return Account(
      json['name'] as String,
      json['age'] as int,
    );
  }
}

/**
 * 結果
 * 
 * シニアおばば
 */
