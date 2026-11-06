import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cake_shop_list_ui.dart';

class CakeShopDetailUI extends StatelessWidget {
  const CakeShopDetailUI({super.key, required this.shop});
  final CakeShop shop;

  Future<void> _openLink(String value) async {
    final uri = Uri.tryParse(value);
    if (uri != null && await canLaunchUrl(uri))
      await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xfffff7fa),
        appBar: AppBar(
            title: Text(shop.name),
            backgroundColor: const Color(0xffef3937),
            foregroundColor: Colors.white,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context))),
        body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 28),
            children: [
              SizedBox(
                height: 230,
                child: PageView(
                  children: shop.images
                      .map((image) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(image,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => Container(
                                        color: Colors.pink.shade50,
                                        child: const Icon(Icons.cake,
                                            size: 64, color: Colors.pink),
                                      )),
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 18),
              Text(shop.name,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold)),
              const SizedBox(height: 14),
              _InfoRow(
                  icon: Icons.location_on,
                  title: 'ที่ตั้ง',
                  detail: shop.address),
              _InfoRow(
                  icon: Icons.schedule,
                  title: 'เวลาเปิด–ปิด',
                  detail: shop.openCloseTime),
              _InfoRow(
                  icon: Icons.phone, title: 'โทรศัพท์', detail: shop.phone),
              const SizedBox(height: 14),
              const Text('รายละเอียดร้าน',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(shop.description,
                  style: TextStyle(height: 1.6, color: Colors.grey.shade800)),
              const SizedBox(height: 16),
              FilledButton.icon(
                  onPressed: () => _openLink('tel:${shop.phone}'),
                  icon: const Icon(Icons.call),
                  label: Text('โทร ${shop.phone}'),
                  style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xff4caf50),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 13))),
              const SizedBox(height: 8),
              _LinkRow(
                  icon: Icons.language,
                  label: shop.website,
                  color: Colors.amber,
                  onTap: () => _openLink(shop.website)),
              _LinkRow(
                  icon: Icons.facebook,
                  label: 'Facebook',
                  color: const Color(0xff1877f2),
                  onTap: () => _openLink(shop.facebook)),
              const SizedBox(height: 14),
              const Text('แผนที่',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: SizedBox(
                      height: 230,
                      child: FlutterMap(
                          options: MapOptions(
                              initialCenter: LatLng(
                                  shop.latitudeValue, shop.longitudeValue),
                              initialZoom: 14),
                          children: [
                            TileLayer(
                                urlTemplate:
                                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                userAgentPackageName:
                                    'com.example.flutter_cake_shop_project'),
                            MarkerLayer(markers: [
                              Marker(
                                  point: LatLng(
                                      shop.latitudeValue, shop.longitudeValue),
                                  width: 44,
                                  height: 44,
                                  child: const Icon(Icons.location_pin,
                                      size: 42, color: Colors.red))
                            ])
                          ]))),
              const SizedBox(height: 8),
              Text('${shop.latitude}, ${shop.longitude}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
            ]),
      );
}

class _InfoRow extends StatelessWidget {
  const _InfoRow(
      {required this.icon, required this.title, required this.detail});
  final IconData icon;
  final String title, detail;
  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, size: 19, color: const Color(0xffef3937)),
        const SizedBox(width: 10),
        SizedBox(
            width: 92,
            child: Text(title,
                style: const TextStyle(fontWeight: FontWeight.w600))),
        Expanded(child: Text(detail))
      ]));
}

class _LinkRow extends StatelessWidget {
  const _LinkRow(
      {required this.icon,
      required this.label,
      required this.onTap,
      this.color = const Color(0xffef3937)});
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) => InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(children: [
            Icon(icon, size: 19, color: color),
            const SizedBox(width: 10),
            Expanded(
                child: Text(label,
                    overflow: TextOverflow.ellipsis,
                    style:
                        const TextStyle(decoration: TextDecoration.underline))),
            const Icon(Icons.open_in_new, size: 16)
          ])));
}

// Keep the spelling used by the original assignment file name/API.
typedef CakeShopDetialUI = CakeShopDetailUI;
