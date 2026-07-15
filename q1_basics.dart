// 1.1
const double vatRate = 0.07;

void main() {
  // 1.1
  final String shopName = "Dart Cafe";
  print("ร้าน: $shopName");
  print("อัตราภาษี: $vatRate");
  print("---");

  // 1.2
  List<String> categories = ['อาหารหลัก', 'อาหารทางเล่น', 'เครื่องดื่ม'];
  Map<String, int> menu = {'ข้าวกะเพราหมูสับ':60, 'ฝรั่งทอดกรอบ':30, 'เค้ก':80, 'ชาเขียว':15};
  print("หมวดหมู่: $categories");
  print("จำนวนเมนูทั้งหมด: ${menu.length} รายการ");
  print("ราคาเค้ก: ${menu['เค้ก']} บาท");
  print("---");

  // 1.3
  print("เมนูราคาตั้งแต่ 50 บาทขึ้นไป:");
  for (String menuName in menu.keys){
    int menuPrice = menu[menuName] ?? 0;
    if (menuPrice >= 50){
      print("$menuName : $menuPrice บาท");
    }
  }
  print("---");

  // 1.4
  print("ยอดสุทธิ (ไม่มีส่วนลด): ${cacTotal(price: 55, qty: 2)}");
  print("ยอดสุทธิ (ส่วนลด 10 บาท): ${cacTotal(price: 55, qty: 2, discount: 10)}");
  print("---");
  
  // 1.5
  String? coupon;

  print("ความยาวคูปอง: ${coupon?.length ?? 0}");

  coupon ??= "NO-COUPON";
  print("คูปองหลังกำหนดค่า: $coupon");
  
}

//1.4
double cacTotal({required int price, required int qty, double discount = 0}) {
  return (price * qty - discount) * (1 + vatRate);
}