String convert(String val) {
  var lastThree = val.substring(val.length - 3);
  var otherNumbers = val.substring(0, val.length - 3);
  if (otherNumbers.isNotEmpty) lastThree = ',${lastThree}';
  var res = otherNumbers.replaceAllMapped(
      RegExp(r'(\d{1,2})(?=(\d{2})+(?!\d))'), (Match match) => '${match[1]},');
  return '$res$lastThree';
}
