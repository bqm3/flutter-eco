import 'dart:convert';

List<AdBanner> adBannerListFromJson(String val) {
  final jsonData = json.decode(val);
  return List<AdBanner>.from(
    jsonData['data'].map((banner) => AdBanner.fromJson(banner)),
  );
}

class AdBanner {
  final int id;
  final String image;

  AdBanner({required this.id, required this.image});

  factory AdBanner.fromJson(Map<String, dynamic> data) {
    // Trích xuất đường dẫn URL một cách an toàn
    print('data: $data');
    final imageUrl = data['image']?['formats']?['thumbnail']?['url'] ?? '';
    print('image url' + imageUrl);
    return AdBanner(
      id: data['id'],
      image: imageUrl,
    );
  }
}
