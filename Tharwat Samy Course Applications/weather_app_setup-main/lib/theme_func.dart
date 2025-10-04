import 'package:flutter/material.dart';

MaterialColor getWeatherThemeColor(String weatherCode) {
  if (weatherCode == 'null') {
    return Colors.blue;
  } else if (weatherCode == "c01d") {
    return Colors.amber; // لون الشمس الساطعة ☀️
  }
  // Few, scattered, or broken clouds (day)
  else if (weatherCode.startsWith("c02")) {
    return Colors.lightBlue; // لون السماء مع سحب خفيفة 🌤️
  }
  // Overcast clouds
  else if (weatherCode.startsWith("c04") || weatherCode.startsWith("c03")) {
    return Colors.blueGrey; // لون السماء الملبدة بالغيوم ☁️
  }
  // All types of rain and drizzle
  else if (weatherCode.startsWith("r") || weatherCode.startsWith("d")) {
    return Colors.blue; // لون المطر 🌧️
  }
  // Thunderstorm
  else if (weatherCode.startsWith("t")) {
    return Colors.deepPurple; // لون العواصف الرعدية الداكن ⛈️
  }
  // Snow
  else if (weatherCode.startsWith("s")) {
    return Colors.cyan; // لون الثلج النقي والمائل للزرقة ❄️
  }
  // Mist, fog, etc.
  else if (weatherCode.startsWith("a")) {
    return Colors.grey; // لون الضباب والشبورة 🌫️
  }
  // Clear sky at night or cloudy night
  else if (weatherCode.endsWith("n")) {
    return Colors.indigo; // لون الليل العميق 🌙
  }
  // Default color for any other case
  else {
    return Colors.blue;
  }
}

LinearGradient getWeatherGradient(String weatherCode) {
  // أولاً، نحصل على اللون الأساسي من الدالة القديمة
  MaterialColor themeColor = getWeatherThemeColor(weatherCode);

  // ثانيًا، نستخدم درجات مختلفة من هذا اللون لإنشاء التدرج
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      themeColor[500]!, // درجة أغمق في الأعلى
      themeColor[300]!, // الدرجة الأساسية في المنتصف
      themeColor[100]!, // درجة أفتح في الأسفل
    ],
  );
}
