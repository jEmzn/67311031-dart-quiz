

abstract class MenuItem {
  final String name;
  final double basePrice;
  MenuItem(this.name, this.basePrice);

  double price();

  void show() {
    print("$name - ${price()} บาท");
  }
  
}

class Drink extends MenuItem {
  int toppings;

  Drink(String name, double basePrice, this.toppings) : super(name, basePrice);

  @override
  double price() {
    return basePrice + (10 * toppings);
  }
}

class Food extends MenuItem {
  String size;
  // Size s;

  Food(String name, double basePrice, this.size) : super(name, basePrice);

  @override
  double price() {
    double sizePrice;
    switch (size) {
      case "S":
        sizePrice = 1.0;
      case "M":
        sizePrice = 1.2;
      case "L":
        sizePrice = 1.5;
      default:
        sizePrice = 0.0;
    }
    return basePrice * sizePrice;
  }

}

class Wallet {
  double _balance;
  Wallet(this._balance);
  double get balance => _balance;
  set balance(double value) {
    if (value > 0.0){
      _balance = value;
    } else {
      print("ผิดพลาด: ยอดเงินติดลบไม่ได้");
    }
  }

  bool pay(double value) {

    double cal = this._balance - value;
    if (value < 0.0) {
      print("ผิดพลาด: ยอดเงินติดลบไม่ได้");
      return false;
    }
    if (cal > 0){
      balance = cal;
      print("สถานะ: ชำระเงินแล้ว");
      print("ยอดเงินคงเหลือ: ${this._balance}");
      return true;
    } else {
      print("สถานะ: รอชำระเงิน");
      print("ยอดเงินคงเหลือ: ${this._balance}");
      return false;
    }
  }
}

void main() {
  List<MenuItem> order = [Drink('ชาเขียว', 15, 2), Food('ข้าวกะเพราะหมูสับ', 60, "L"), Food('ข้าวไข่เจียว', 40, "S")];
  double totalPrice = 0.0;
  for (MenuItem menu in order){
    totalPrice += menu.price();
    menu.show();
  }
  print("ยอดรวมทั้งสิน: $totalPrice บาท");
  print("---");

  Wallet wallet = Wallet(100);
  wallet.pay(-10);
  wallet.pay(10);
  wallet.pay(200);
  print("ยอดเงินคงเหลือ : ${wallet.balance}");
}

