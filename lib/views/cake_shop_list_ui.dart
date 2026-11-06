import 'package:flutter/material.dart';
import 'cake_shop_detial_ui.dart';

class CakeShop {
  const CakeShop({
    required this.name,
    required this.address,
    required this.phone,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.description,
    required this.openCloseTime,
    required this.website,
    required this.facebook,
    required this.latitude,
    required this.longitude,
  });

  final String name;
  final String address;
  final String phone;
  final String image1;
  final String image2;
  final String image3;
  final String description;
  final String openCloseTime;
  final String website;
  final String facebook;
  final String latitude;
  final String longitude;

  List<String> get images => [image1, image2, image3];
  double get latitudeValue => double.tryParse(latitude) ?? 13.7563;
  double get longitudeValue => double.tryParse(longitude) ?? 100.5018;
}

// ข้อมูลร้านเค้กสำหรับแสดงในรายการและหน้ารายละเอียด
const cakeShops = <CakeShop>[
  CakeShop(
    name: 'Yellow Spoon Pastry',
    address: 'โครงการเอกมัย คอมเพล็กซ์ (ระหว่างเอกมัย 19 และ 21)',
    phone: '0854822842',
    image1: 'assets/images/s11.jpg',
    image2: 'assets/images/s12.jpg',
    image3: 'assets/images/s13.jpg',
    description:
        'คาเฟ่ขนมหวานที่มีเบเกอรี่โฮมเมดสูตรน้ำตาลน้อย มีขนมให้เลือกหลากหลาย ทั้งชีสเค้ก ทาร์ต บานอฟฟี่ ช็อกโกแลตเค้ก ครัมเบิล และเค้กวันเกิดหลายรสชาติ',
    openCloseTime: 'ทุกวัน 10.00-20.00 น.',
    website: 'https://www.yellowspoonpastry.com/',
    facebook: 'https://www.facebook.com/yspastry',
    latitude: '13.736634',
    longitude: '100.587512',
  ),
  CakeShop(
    name: 'Vista Cafe by Verasu',
    address: 'อาคารวีรสุ ถนนวิทยุ',
    phone: '022548100',
    image1: 'assets/images/s21.jpg',
    image2: 'assets/images/s22.jpg',
    image3: 'assets/images/s23.jpg',
    description:
        'ร้านเบเกอรี่สำหรับคนรักสุขภาพ คัดสรรวัตถุดิบคุณภาพและแป้งสเปลท์ออร์แกนิกกลูเตนต่ำ มีขนมและเครื่องดื่มให้เลือกหลากหลาย',
    openCloseTime: 'ทุกวัน 09.00-19.00 น.',
    website: 'http://www.vistacafe.co.th/',
    facebook: 'https://www.facebook.com/vistacafe',
    latitude: '13.7403',
    longitude: '100.547417',
  ),
  CakeShop(
    name: 'Sweet Spell',
    address: 'สี่แยกเหม่งจ๋าย ประชาอุทิศ 19',
    phone: '0846666828',
    image1: 'assets/images/s31.jpg',
    image2: 'assets/images/s32.jpg',
    image3: 'assets/images/s33.jpg',
    description:
        'ร้านเค้กและเบเกอรี่ที่มีเมนูให้เลือกหลากหลาย อาทิ เค้ก เครปเค้ก ชูครีม บานอฟฟี่ และชีสพาย',
    openCloseTime: 'ทุกวัน 10.00-20.00 น.\n(หยุดทุกวันที่ 15 ของเดือน)',
    website: 'http://www.sweetspell.com/dessert-menu/',
    facebook: 'https://www.facebook.com/sweetspellcafe',
    latitude: '13.771741',
    longitude: '100.586662',
  ),
  CakeShop(
    name: 'Larna House',
    address: 'พัฒนาการ 61',
    phone: '023215995',
    image1: 'assets/images/s41.jpg',
    image2: 'assets/images/s42.jpg',
    image3: 'assets/images/s43.jpg',
    description:
        'ร้านเค้กช็อกโกแลตสูตรต้นตำรับจากสิงคโปร์ ใช้วัตถุดิบคุณภาพและมีประสบการณ์ทำเค้กวันเกิดมายาวนานกว่า 20 ปี',
    openCloseTime: 'ทุกวัน 09.00-21.00 น.',
    website: 'https://larnahouse.com/',
    facebook: 'https://www.facebook.com/20Larnahouse',
    latitude: '13.730245',
    longitude: '100.658385',
  ),
  CakeShop(
    name: 'I bake & You take',
    address: 'วิภาวดีรังสิต 60',
    phone: '0934499447',
    image1: 'assets/images/s51.jpg',
    image2: 'assets/images/s52.jpg',
    image3: 'assets/images/s53.jpg',
    description:
        'ร้านเค้กโฮมเมดแบบ Made to order รับทำเค้กวันเกิด คัพเค้ก คุกกี้ และบราวนี่ พร้อมบริการจัดส่งในกรุงเทพฯ',
    openCloseTime: 'ทุกวัน 07.30-19.30 น.',
    website: 'https://ibakeyoutake.com/',
    facebook: 'https://www.facebook.com/Ibakeyoutakebysine',
    latitude: '13.864575',
    longitude: '100.5823',
  ),
  CakeShop(
    name: 'Coffee bean by dao',
    address: 'ชั้น G สยามพารากอน',
    phone: '026109702',
    image1: 'assets/images/s61.jpg',
    image2: 'assets/images/s62.jpg',
    image3: 'assets/images/s63.jpg',
    description:
        'ร้านอาหารและเค้กที่มีเมนูให้เลือกหลากหลาย รสชาติไม่หวานจนเกินไป มีทั้งเรนโบว์เค้ก ช็อกโกแลตมูสเค้ก และเค้กนมสด',
    openCloseTime: 'ทุกวัน 10.00-22.00 น.',
    website: 'http://www.coffeebeans.co.th/',
    facebook: 'https://www.facebook.com/CoffeeBeansbyDao',
    latitude: '13.7469267',
    longitude: '100.5349883',
  ),
  CakeShop(
    name: 'Bake Ministry',
    address: 'สุขุมวิท 26',
    phone: '0891540474',
    image1: 'assets/images/s71.jpg',
    image2: 'assets/images/s72.jpg',
    image3: 'assets/images/s73.jpg',
    description:
        'ร้านเค้กโฮมเมด รับทำเค้กวันเกิด เค้กแต่งงาน และเค้กสำหรับโอกาสพิเศษ รวมถึงคุกกี้และมาการอง',
    openCloseTime: '10.00-18.00 น.\n(หยุดวันอาทิตย์)',
    website: 'http://www.bakeministry.net/',
    facebook: 'https://www.facebook.com/bakeministry',
    latitude: '13.7281129',
    longitude: '100.5705757',
  ),
];

class CakeShopListUI extends StatelessWidget {
  const CakeShopListUI({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xfffff7fa),
        appBar: AppBar(
          title: const Text('สายด่วนกินเค้ก'),
          centerTitle: true,
          backgroundColor: const Color(0xffef3937),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  height: 155,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset('assets/images/ck01.png', fit: BoxFit.cover),
                      Container(color: Colors.black.withValues(alpha: .25)),
                      const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('ร้านเค้กน่าลอง',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold)),
                            Text('รวมร้านอร่อยใกล้คุณ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              ...cakeShops.map((shop) => _ShopCard(shop: shop)),
            ],
          ),
        ),
      );
}

class _ShopCard extends StatelessWidget {
  const _ShopCard({required this.shop});
  final CakeShop shop;

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.only(bottom: 10),
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CakeShopDetailUI(shop: shop))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    shop.image1,
                    width: 76,
                    height: 66,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                        width: 76,
                        height: 66,
                        color: Colors.pink.shade50,
                        child: const Icon(Icons.cake, color: Colors.pink)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shop.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15)),
                      const SizedBox(height: 5),
                      Text(shop.phone,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 12)),
                    ],
                  ),
                ),
                const Icon(Icons.info, color: Color(0xffef3937)),
              ],
            ),
          ),
        ),
      );
}
