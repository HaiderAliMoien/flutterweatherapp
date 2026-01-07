import 'condition_model.dart';

class Current {
  int lastUpdatedEpoch;
  String lastUpdated;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;
  double windMph;
  double windKph;
  int windDegree;
  String windDir;
  double pressureMb;
  double pressureIn;
  double precipMm;
  double precipIn;
  int humidity;
  int cloud;
  double feelslikeC;
  double feelslikeF;
  double visKm;
  double visMiles;
  double uv;
  double gustMph;
  double gustKph;

  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
    lastUpdatedEpoch: json['last_updated_epoch'] as int? ?? 0,
    lastUpdated: json['last_updated']?.toString() ?? '',
    tempC: (json['temp_c'] as num?)?.toDouble() ?? 0.0,
    tempF: (json['temp_f'] as num?)?.toDouble() ?? 0.0,
    isDay: json['is_day'] as int? ?? 0,
    condition: Condition.fromJson(json['condition'] ?? {}),
    windMph: (json['wind_mph'] as num?)?.toDouble() ?? 0.0,
    windKph: (json['wind_kph'] as num?)?.toDouble() ?? 0.0,
    windDegree: json['wind_degree'] as int? ?? 0,
    windDir: json['wind_dir']?.toString() ?? '',
    pressureMb: (json['pressure_mb'] as num?)?.toDouble() ?? 0.0,
    pressureIn: (json['pressure_in'] as num?)?.toDouble() ?? 0.0,
    precipMm: (json['precip_mm'] as num?)?.toDouble() ?? 0.0,
    precipIn: (json['precip_in'] as num?)?.toDouble() ?? 0.0,
    humidity: json['humidity'] as int? ?? 0,
    cloud: json['cloud'] as int? ?? 0,
    feelslikeC: (json['feelslike_c'] as num?)?.toDouble() ?? 0.0,
    feelslikeF: (json['feelslike_f'] as num?)?.toDouble() ?? 0.0,
    visKm: (json['vis_km'] as num?)?.toDouble() ?? 0.0,
    visMiles: (json['vis_miles'] as num?)?.toDouble() ?? 0.0,
    uv: (json['uv'] as num?)?.toDouble() ?? 0.0,
    gustMph: (json['gust_mph'] as num?)?.toDouble() ?? 0.0,
    gustKph: (json['gust_kph'] as num?)?.toDouble() ?? 0.0,
  );

  Map<String, dynamic> toJson() => {
    'last_updated_epoch': lastUpdatedEpoch,
    'last_updated': lastUpdated,
    'temp_c': tempC,
    'temp_f': tempF,
    'is_day': isDay,
    'condition': condition.toJson(),
    'wind_mph': windMph,
    'wind_kph': windKph,
    'wind_degree': windDegree,
    'wind_dir': windDir,
    'pressure_mb': pressureMb,
    'pressure_in': pressureIn,
    'precip_mm': precipMm,
    'precip_in': precipIn,
    'humidity': humidity,
    'cloud': cloud,
    'feelslike_c': feelslikeC,
    'feelslike_f': feelslikeF,
    'vis_km': visKm,
    'vis_miles': visMiles,
    'uv': uv,
    'gust_mph': gustMph,
    'gust_kph': gustKph,
  };
}