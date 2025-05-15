extension DoubleFormatting on double { 
  String toPercent([int fractionDigits = 1]) => '${(this * 100).toStringAsFixed(fractionDigits)}%'; 
}