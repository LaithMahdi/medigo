import 'package:intl/intl.dart';

String formatPrice(num number) {
  return NumberFormat("#,###", "fr_FR").format(number).replaceAll(",", " ");
}
