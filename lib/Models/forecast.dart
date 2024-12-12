class Forecast {
  Location? location;
  Current? current;

  Forecast({this.location, this.current});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json["location"] is Map) {
      location =
          json["location"] == null ? null : Location.fromJson(json["location"]);
    }
    if (json["current"] is Map) {
      current =
          json["current"] == null ? null : Current.fromJson(json["current"]);
    }
  }

  static List<Forecast> fromList(List<Map<String, dynamic>> list) {
    return list.map(Forecast.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data["location"] = location?.toJson();
    }
    if (current != null) {
      data["current"] = current?.toJson();
    }
    return data;
  }
}

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  int? pressureMb;
  double? pressureIn;
  int? precipMm;
  int? precipIn;
  int? humidity;
  int? cloud;
  int? feelslikeC;
  double? feelslikeF;
  int? visKm;
  int? visMiles;
  int? uv;
  double? gustMph;
  double? gustKph;
  AirQuality? airQuality;

  Current(
      {this.lastUpdatedEpoch,
      this.lastUpdated,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.visKm,
      this.visMiles,
      this.uv,
      this.gustMph,
      this.gustKph,
      this.airQuality});

  Current.fromJson(Map<String, dynamic> json) {
    if (json["last_updated_epoch"] is int) {
      lastUpdatedEpoch = json["last_updated_epoch"];
    }
    if (json["last_updated"] is String) {
      lastUpdated = json["last_updated"];
    }
    if (json["temp_c"] is double) {
      tempC = json["temp_c"];
    }
    if (json["temp_f"] is double) {
      tempF = json["temp_f"];
    }
    if (json["is_day"] is int) {
      isDay = json["is_day"];
    }
    if (json["condition"] is Map) {
      condition = json["condition"] == null
          ? null
          : Condition.fromJson(json["condition"]);
    }
    if (json["wind_mph"] is double) {
      windMph = json["wind_mph"];
    }
    if (json["wind_kph"] is double) {
      windKph = json["wind_kph"];
    }
    if (json["wind_degree"] is int) {
      windDegree = json["wind_degree"];
    }
    if (json["wind_dir"] is String) {
      windDir = json["wind_dir"];
    }
    if (json["pressure_mb"] is int) {
      pressureMb = json["pressure_mb"];
    }
    if (json["pressure_in"] is double) {
      pressureIn = json["pressure_in"];
    }
    if (json["precip_mm"] is int) {
      precipMm = json["precip_mm"];
    }
    if (json["precip_in"] is int) {
      precipIn = json["precip_in"];
    }
    if (json["humidity"] is int) {
      humidity = json["humidity"];
    }
    if (json["cloud"] is int) {
      cloud = json["cloud"];
    }
    if (json["feelslike_c"] is int) {
      feelslikeC = json["feelslike_c"];
    }
    if (json["feelslike_f"] is double) {
      feelslikeF = json["feelslike_f"];
    }
    if (json["vis_km"] is int) {
      visKm = json["vis_km"];
    }
    if (json["vis_miles"] is int) {
      visMiles = json["vis_miles"];
    }
    if (json["uv"] is int) {
      uv = json["uv"];
    }
    if (json["gust_mph"] is double) {
      gustMph = json["gust_mph"];
    }
    if (json["gust_kph"] is double) {
      gustKph = json["gust_kph"];
    }
    if (json["air_quality"] is Map) {
      airQuality = json["air_quality"] == null
          ? null
          : AirQuality.fromJson(json["air_quality"]);
    }
  }

  static List<Current> fromList(List<Map<String, dynamic>> list) {
    return list.map(Current.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["last_updated_epoch"] = lastUpdatedEpoch;
    data["last_updated"] = lastUpdated;
    data["temp_c"] = tempC;
    data["temp_f"] = tempF;
    data["is_day"] = isDay;
    if (condition != null) {
      data["condition"] = condition?.toJson();
    }
    data["wind_mph"] = windMph;
    data["wind_kph"] = windKph;
    data["wind_degree"] = windDegree;
    data["wind_dir"] = windDir;
    data["pressure_mb"] = pressureMb;
    data["pressure_in"] = pressureIn;
    data["precip_mm"] = precipMm;
    data["precip_in"] = precipIn;
    data["humidity"] = humidity;
    data["cloud"] = cloud;
    data["feelslike_c"] = feelslikeC;
    data["feelslike_f"] = feelslikeF;
    data["vis_km"] = visKm;
    data["vis_miles"] = visMiles;
    data["uv"] = uv;
    data["gust_mph"] = gustMph;
    data["gust_kph"] = gustKph;
    if (airQuality != null) {
      data["air_quality"] = airQuality?.toJson();
    }
    return data;
  }
}

class AirQuality {
  double? co;
  double? no2;
  double? o3;
  int? so2;
  double? pm25;
  int? pm10;
  int? usEpaIndex;
  int? gbDefraIndex;

  AirQuality(
      {this.co,
      this.no2,
      this.o3,
      this.so2,
      this.pm25,
      this.pm10,
      this.usEpaIndex,
      this.gbDefraIndex});

  AirQuality.fromJson(Map<String, dynamic> json) {
    if (json["co"] is double) {
      co = json["co"];
    }
    if (json["no2"] is double) {
      no2 = json["no2"];
    }
    if (json["o3"] is double) {
      o3 = json["o3"];
    }
    if (json["so2"] is int) {
      so2 = json["so2"];
    }
    if (json["pm2_5"] is double) {
      pm25 = json["pm2_5"];
    }
    if (json["pm10"] is int) {
      pm10 = json["pm10"];
    }
    if (json["us-epa-index"] is int) {
      usEpaIndex = json["us-epa-index"];
    }
    if (json["gb-defra-index"] is int) {
      gbDefraIndex = json["gb-defra-index"];
    }
  }

  static List<AirQuality> fromList(List<Map<String, dynamic>> list) {
    return list.map(AirQuality.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["co"] = co;
    data["no2"] = no2;
    data["o3"] = o3;
    data["so2"] = so2;
    data["pm2_5"] = pm25;
    data["pm10"] = pm10;
    data["us-epa-index"] = usEpaIndex;
    data["gb-defra-index"] = gbDefraIndex;
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    if (json["text"] is String) {
      text = json["text"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["code"] is int) {
      code = json["code"];
    }
  }

  static List<Condition> fromList(List<Map<String, dynamic>> list) {
    return list.map(Condition.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["text"] = text;
    data["icon"] = icon;
    data["code"] = code;
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  Location(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeEpoch,
      this.localtime});

  Location.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["region"] is String) {
      region = json["region"];
    }
    if (json["country"] is String) {
      country = json["country"];
    }
    if (json["lat"] is double) {
      lat = json["lat"];
    }
    if (json["lon"] is double) {
      lon = json["lon"];
    }
    if (json["tz_id"] is String) {
      tzId = json["tz_id"];
    }
    if (json["localtime_epoch"] is int) {
      localtimeEpoch = json["localtime_epoch"];
    }
    if (json["localtime"] is String) {
      localtime = json["localtime"];
    }
  }

  static List<Location> fromList(List<Map<String, dynamic>> list) {
    return list.map(Location.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["region"] = region;
    data["country"] = country;
    data["lat"] = lat;
    data["lon"] = lon;
    data["tz_id"] = tzId;
    data["localtime_epoch"] = localtimeEpoch;
    data["localtime"] = localtime;
    return data;
  }
}
