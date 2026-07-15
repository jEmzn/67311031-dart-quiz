// 1.1
const double vatRate = 0.07;

void main() {
  // 1.1
  final String shopName = "Dart Cafe";
  print("$vatRate");
  print("$shopName");

  // 1.2
  List<String> categories = ['อาหารหลัก', 'อาหารทางเล่น', 'เครื่องดื่ม'];
  Map<String, int> menu = {'ข้าวกะเพราหมูสับ':60, 'ฝรั่งทอดกรอบ':30, 'เค้ก':80, 'ชาเขียว':15};
  print(menu.length);
  print(menu['เค้ก']);

  // 1.3
  for (String menuName in menu.keys){
    int menuPrice = menu[menuName] ?? 0;
    if (menuPrice >= 50){
      print("$menuName : $menuPrice บาท");
    }
  }

  // 1.4
  print(cacTotal(price: 100, qty: 2, discount: 10));
  print(cacTotal(price: 50, qty: 3));
  
}

//1.4
double cacTotal({required int price, required int qty, double discount = 0}) {
  return (price * qty - discount) * (1 + vatRate);
}