class Weather {
  Location? location;
  Current? current;
  Forecast? forecast;
  Alerts? alerts;

  Weather({this.location, this.current, this.forecast, this.alerts});

  Weather.fromJson(Map<String, dynamic> json) {
    if (json["location"] is Map) {
      location =
          json["location"] == null ? null : Location.fromJson(json["location"]);
    }
    if (json["current"] is Map) {
      current =
          json["current"] == null ? null : Current.fromJson(json["current"]);
    }
    if (json["forecast"] is Map) {
      forecast =
          json["forecast"] == null ? null : Forecast.fromJson(json["forecast"]);
    }
    if (json["alerts"] is Map) {
      alerts = json["alerts"] == null ? null : Alerts.fromJson(json["alerts"]);
    }
  }

  static List<Weather> fromList(List<Map<String, dynamic>> list) {
    return list.map(Weather.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data["location"] = location?.toJson();
    }
    if (current != null) {
      data["current"] = current?.toJson();
    }
    if (forecast != null) {
      data["forecast"] = forecast?.toJson();
    }
    if (alerts != null) {
      data["alerts"] = alerts?.toJson();
    }
    return data;
  }
}

class Alerts {
  List<Alert>? alert;

  Alerts({this.alert});

  Alerts.fromJson(Map<String, dynamic> json) {
    if (json["alert"] is List) {
      alert = json["alert"] == null
          ? null
          : (json["alert"] as List).map((e) => Alert.fromJson(e)).toList();
    }
  }

  static List<Alerts> fromList(List<Map<String, dynamic>> list) {
    return list.map(Alerts.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (alert != null) {
      data["alert"] = alert?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Alert {
  String? headline;
  dynamic msgtype;
  dynamic severity;
  dynamic urgency;
  dynamic areas;
  String? category;
  dynamic certainty;
  String? event;
  dynamic note;
  String? effective;
  String? expires;
  String? desc;
  String? instruction;

  Alert(
      {this.headline,
      this.msgtype,
      this.severity,
      this.urgency,
      this.areas,
      this.category,
      this.certainty,
      this.event,
      this.note,
      this.effective,
      this.expires,
      this.desc,
      this.instruction});

  Alert.fromJson(Map<String, dynamic> json) {
    if (json["headline"] is String) {
      headline = json["headline"];
    }
    msgtype = json["msgtype"];
    severity = json["severity"];
    urgency = json["urgency"];
    areas = json["areas"];
    if (json["category"] is String) {
      category = json["category"];
    }
    certainty = json["certainty"];
    if (json["event"] is String) {
      event = json["event"];
    }
    note = json["note"];
    if (json["effective"] is String) {
      effective = json["effective"];
    }
    if (json["expires"] is String) {
      expires = json["expires"];
    }
    if (json["desc"] is String) {
      desc = json["desc"];
    }
    if (json["instruction"] is String) {
      instruction = json["instruction"];
    }
  }

  static List<Alert> fromList(List<Map<String, dynamic>> list) {
    return list.map(Alert.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["headline"] = headline;
    data["msgtype"] = msgtype;
    data["severity"] = severity;
    data["urgency"] = urgency;
    data["areas"] = areas;
    data["category"] = category;
    data["certainty"] = certainty;
    data["event"] = event;
    data["note"] = note;
    data["effective"] = effective;
    data["expires"] = expires;
    data["desc"] = desc;
    data["instruction"] = instruction;
    return data;
  }
}

class Forecast {
  List<Forecastday>? forecastday;

  Forecast({this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json["forecastday"] is List) {
      forecastday = json["forecastday"] == null
          ? null
          : (json["forecastday"] as List)
              .map((e) => Forecastday.fromJson(e))
              .toList();
    }
  }

  static List<Forecast> fromList(List<Map<String, dynamic>> list) {
    return list.map(Forecast.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (forecastday != null) {
      data["forecastday"] = forecastday?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Forecastday {
  String? date;
  int? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  Forecastday({this.date, this.dateEpoch, this.day, this.astro, this.hour});

  Forecastday.fromJson(Map<String, dynamic> json) {
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["date_epoch"] is int) {
      dateEpoch = json["date_epoch"];
    }
    if (json["day"] is Map) {
      day = json["day"] == null ? null : Day.fromJson(json["day"]);
    }
    if (json["astro"] is Map) {
      astro = json["astro"] == null ? null : Astro.fromJson(json["astro"]);
    }
    if (json["hour"] is List) {
      hour = json["hour"] == null
          ? null
          : (json["hour"] as List).map((e) => Hour.fromJson(e)).toList();
    }
  }

  static List<Forecastday> fromList(List<Map<String, dynamic>> list) {
    return list.map(Forecastday.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["date"] = date;
    data["date_epoch"] = dateEpoch;
    if (day != null) {
      data["day"] = day?.toJson();
    }
    if (astro != null) {
      data["astro"] = astro?.toJson();
    }
    if (hour != null) {
      data["hour"] = hour?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Hour {
  int? timeEpoch;
  String? time;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition2? condition;
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
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  int? visKm;
  int? visMiles;
  int? gustMph;
  double? gustKph;
  int? uv;

  Hour(
      {this.timeEpoch,
      this.time,
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
      this.windchillC,
      this.windchillF,
      this.heatindexC,
      this.heatindexF,
      this.dewpointC,
      this.dewpointF,
      this.willItRain,
      this.chanceOfRain,
      this.willItSnow,
      this.chanceOfSnow,
      this.visKm,
      this.visMiles,
      this.gustMph,
      this.gustKph,
      this.uv});

  Hour.fromJson(Map<String, dynamic> json) {
    if (json["time_epoch"] is int) {
      timeEpoch = json["time_epoch"];
    }
    if (json["time"] is String) {
      time = json["time"];
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
          : Condition2.fromJson(json["condition"]);
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
    if (json["feelslike_c"] is double) {
      feelslikeC = json["feelslike_c"];
    }
    if (json["feelslike_f"] is double) {
      feelslikeF = json["feelslike_f"];
    }
    if (json["windchill_c"] is double) {
      windchillC = json["windchill_c"];
    }
    if (json["windchill_f"] is double) {
      windchillF = json["windchill_f"];
    }
    if (json["heatindex_c"] is double) {
      heatindexC = json["heatindex_c"];
    }
    if (json["heatindex_f"] is double) {
      heatindexF = json["heatindex_f"];
    }
    if (json["dewpoint_c"] is double) {
      dewpointC = json["dewpoint_c"];
    }
    if (json["dewpoint_f"] is double) {
      dewpointF = json["dewpoint_f"];
    }
    if (json["will_it_rain"] is int) {
      willItRain = json["will_it_rain"];
    }
    if (json["chance_of_rain"] is int) {
      chanceOfRain = json["chance_of_rain"];
    }
    if (json["will_it_snow"] is int) {
      willItSnow = json["will_it_snow"];
    }
    if (json["chance_of_snow"] is int) {
      chanceOfSnow = json["chance_of_snow"];
    }
    if (json["vis_km"] is int) {
      visKm = json["vis_km"];
    }
    if (json["vis_miles"] is int) {
      visMiles = json["vis_miles"];
    }
    if (json["gust_mph"] is int) {
      gustMph = json["gust_mph"];
    }
    if (json["gust_kph"] is double) {
      gustKph = json["gust_kph"];
    }
    if (json["uv"] is int) {
      uv = json["uv"];
    }
  }

  static List<Hour> fromList(List<Map<String, dynamic>> list) {
    return list.map(Hour.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["time_epoch"] = timeEpoch;
    data["time"] = time;
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
    data["windchill_c"] = windchillC;
    data["windchill_f"] = windchillF;
    data["heatindex_c"] = heatindexC;
    data["heatindex_f"] = heatindexF;
    data["dewpoint_c"] = dewpointC;
    data["dewpoint_f"] = dewpointF;
    data["will_it_rain"] = willItRain;
    data["chance_of_rain"] = chanceOfRain;
    data["will_it_snow"] = willItSnow;
    data["chance_of_snow"] = chanceOfSnow;
    data["vis_km"] = visKm;
    data["vis_miles"] = visMiles;
    data["gust_mph"] = gustMph;
    data["gust_kph"] = gustKph;
    data["uv"] = uv;
    return data;
  }
}

class Condition2 {
  String? text;
  String? icon;
  int? code;

  Condition2({this.text, this.icon, this.code});

  Condition2.fromJson(Map<String, dynamic> json) {
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

  static List<Condition2> fromList(List<Map<String, dynamic>> list) {
    return list.map(Condition2.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["text"] = text;
    data["icon"] = icon;
    data["code"] = code;
    return data;
  }
}

class Astro {
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  String? moonIllumination;

  Astro(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.moonIllumination});

  Astro.fromJson(Map<String, dynamic> json) {
    if (json["sunrise"] is String) {
      sunrise = json["sunrise"];
    }
    if (json["sunset"] is String) {
      sunset = json["sunset"];
    }
    if (json["moonrise"] is String) {
      moonrise = json["moonrise"];
    }
    if (json["moonset"] is String) {
      moonset = json["moonset"];
    }
    if (json["moon_phase"] is String) {
      moonPhase = json["moon_phase"];
    }
    if (json["moon_illumination"] is String) {
      moonIllumination = json["moon_illumination"];
    }
  }

  static List<Astro> fromList(List<Map<String, dynamic>> list) {
    return list.map(Astro.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["sunrise"] = sunrise;
    data["sunset"] = sunset;
    data["moonrise"] = moonrise;
    data["moonset"] = moonset;
    data["moon_phase"] = moonPhase;
    data["moon_illumination"] = moonIllumination;
    return data;
  }
}

class Day {
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  int? totalprecipMm;
  int? totalprecipIn;
  int? avgvisKm;
  int? avgvisMiles;
  int? avghumidity;
  int? dailyWillItRain;
  int? dailyChanceOfRain;
  int? dailyWillItSnow;
  int? dailyChanceOfSnow;
  Condition1? condition;
  int? uv;

  Day(
      {this.maxtempC,
      this.maxtempF,
      this.mintempC,
      this.mintempF,
      this.avgtempC,
      this.avgtempF,
      this.maxwindMph,
      this.maxwindKph,
      this.totalprecipMm,
      this.totalprecipIn,
      this.avgvisKm,
      this.avgvisMiles,
      this.avghumidity,
      this.dailyWillItRain,
      this.dailyChanceOfRain,
      this.dailyWillItSnow,
      this.dailyChanceOfSnow,
      this.condition,
      this.uv});

  Day.fromJson(Map<String, dynamic> json) {
    if (json["maxtemp_c"] is double) {
      maxtempC = json["maxtemp_c"];
    }
    if (json["maxtemp_f"] is double) {
      maxtempF = json["maxtemp_f"];
    }
    if (json["mintemp_c"] is double) {
      mintempC = json["mintemp_c"];
    }
    if (json["mintemp_f"] is double) {
      mintempF = json["mintemp_f"];
    }
    if (json["avgtemp_c"] is double) {
      avgtempC = json["avgtemp_c"];
    }
    if (json["avgtemp_f"] is double) {
      avgtempF = json["avgtemp_f"];
    }
    if (json["maxwind_mph"] is double) {
      maxwindMph = json["maxwind_mph"];
    }
    if (json["maxwind_kph"] is double) {
      maxwindKph = json["maxwind_kph"];
    }
    if (json["totalprecip_mm"] is int) {
      totalprecipMm = json["totalprecip_mm"];
    }
    if (json["totalprecip_in"] is int) {
      totalprecipIn = json["totalprecip_in"];
    }
    if (json["avgvis_km"] is int) {
      avgvisKm = json["avgvis_km"];
    }
    if (json["avgvis_miles"] is int) {
      avgvisMiles = json["avgvis_miles"];
    }
    if (json["avghumidity"] is int) {
      avghumidity = json["avghumidity"];
    }
    if (json["daily_will_it_rain"] is int) {
      dailyWillItRain = json["daily_will_it_rain"];
    }
    if (json["daily_chance_of_rain"] is int) {
      dailyChanceOfRain = json["daily_chance_of_rain"];
    }
    if (json["daily_will_it_snow"] is int) {
      dailyWillItSnow = json["daily_will_it_snow"];
    }
    if (json["daily_chance_of_snow"] is int) {
      dailyChanceOfSnow = json["daily_chance_of_snow"];
    }
    if (json["condition"] is Map) {
      condition = json["condition"] == null
          ? null
          : Condition1.fromJson(json["condition"]);
    }
    if (json["uv"] is int) {
      uv = json["uv"];
    }
  }

  static List<Day> fromList(List<Map<String, dynamic>> list) {
    return list.map(Day.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["maxtemp_c"] = maxtempC;
    data["maxtemp_f"] = maxtempF;
    data["mintemp_c"] = mintempC;
    data["mintemp_f"] = mintempF;
    data["avgtemp_c"] = avgtempC;
    data["avgtemp_f"] = avgtempF;
    data["maxwind_mph"] = maxwindMph;
    data["maxwind_kph"] = maxwindKph;
    data["totalprecip_mm"] = totalprecipMm;
    data["totalprecip_in"] = totalprecipIn;
    data["avgvis_km"] = avgvisKm;
    data["avgvis_miles"] = avgvisMiles;
    data["avghumidity"] = avghumidity;
    data["daily_will_it_rain"] = dailyWillItRain;
    data["daily_chance_of_rain"] = dailyChanceOfRain;
    data["daily_will_it_snow"] = dailyWillItSnow;
    data["daily_chance_of_snow"] = dailyChanceOfSnow;
    if (condition != null) {
      data["condition"] = condition?.toJson();
    }
    data["uv"] = uv;
    return data;
  }
}

class Condition1 {
  String? text;
  String? icon;
  int? code;

  Condition1({this.text, this.icon, this.code});

  Condition1.fromJson(Map<String, dynamic> json) {
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

  static List<Condition1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Condition1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["text"] = text;
    data["icon"] = icon;
    data["code"] = code;
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
