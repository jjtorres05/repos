void main() {
  double temperaturaCelsiusOriginal = 10.0;

  const double multiplicador = 9 / 5;
  const double soma = 32;
  const double divisor = 5 / 9;

  final double temperaturaFahrenheit = temperaturaCelsiusOriginal * multiplicador + soma;

  final double temperaturaConvertidaCelsius = (temperaturaFahrenheit - soma) * divisor;

  print("Temperatura Celsius Original: ${temperaturaCelsiusOriginal.toStringAsFixed(2)}°C");
  print("Convertido para Fahrenheit: ${temperaturaFahrenheit.toStringAsFixed(2)}°F");
  print("Reconvertido para Celsius: ${temperaturaConvertidaCelsius.toStringAsFixed(2)}°C");
}
