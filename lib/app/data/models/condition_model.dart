class Condition {
  String text;
  String icon;
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
    text: json['text']?.toString() ?? '',
    icon: json['icon']?.toString() ?? '',
    code: json['code'] as int? ?? 0,
  );

  Map<String, dynamic> toJson() => {
    'text': text,
    'icon': icon,
    'code': code,
  };
}
