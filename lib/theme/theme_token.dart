
class ThemeToken {
  final String primaryColor;
  final String accentColor;
  final String backgroundColor;
  final String logoAsset;
  final String fontFamily;

  ThemeToken({
    required this.primaryColor,
    required this.accentColor,
    required this.backgroundColor,
    required this.logoAsset,
    required this.fontFamily,
  });

  factory ThemeToken.fromJson(Map<String, dynamic> json) {
    return ThemeToken(
      primaryColor: json['primaryColor'],
      accentColor: json['accentColor'],
      backgroundColor: json['backgroundColor'],
      logoAsset: json['logoAsset'],
      fontFamily: json['fontFamily'],
    );
  }
}
