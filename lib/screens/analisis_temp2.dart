import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AnalisisTemp2 extends StatefulWidget {
const AnalisisTemp2({super.key});
@override
_AnalisisTemp2State createState() => _AnalisisTemp2State();
}
class _AnalisisTemp2State extends State<AnalisisTemp2> {
List<int> histogramData = [];
bool isLoading = true;
String errorMessage = '';
double media = 0;
double varianza = 0;
List<double> gaussPoints = [];
double minVal = 0;
double maxVal = 0;
@override
void initState() {
super.initState();
loadData();
}
Future<void> loadData() async {
try {
final data = await rootBundle.loadString('assets/data/TEMP2.txt');
final lines =
data.split('\n').where((line) => line.trim().isNotEmpty).toList();
final N = lines.length;
final values = List<double>.filled(N, 0);
for (int i = 0; i < N; i++) {
values[i] = double.parse(lines[i].trim().replaceAll(',', '.'));
media += values[i];
}
media /= N;
for (int i = 0; i < N; i++) {
varianza += pow(values[i] - media, 2);
}
varianza /= (N - 1);
const binCount = 15;
histogramData = List<int>.filled(binCount, 0);
minVal = values.reduce(min);
maxVal = values.reduce(max);
final binWidthVal = (maxVal - minVal) / binCount;
for (final val in values) {
int binIndex = ((val - minVal) / binWidthVal).floor();
if (binIndex >= binCount) binIndex = binCount - 1;
histogramData[binIndex]++;
}
// Calcular puntos de la curva gaussiana
gaussPoints = List.generate(binCount, (j) {
final x = minVal + j * binWidthVal + (binWidthVal / 2);
return (1 / sqrt(2 * pi * varianza)) *
exp(-pow(x - media, 2) / (2 * varianza));
});
setState(() => isLoading = false);
} catch (e) {
setState(() {
errorMessage = 'Error al cargar datos: ${e.toString()}';
isLoading = false;
});
}
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Análisis Estadístico de Temperaturas'),
backgroundColor: const Color.fromARGB(255, 228, 113, 19),
foregroundColor: Colors.white,
),
body:
isLoading
? const Center(child: CircularProgressIndicator())
: errorMessage.isNotEmpty
? Center(
child: Text(
errorMessage,
style: const TextStyle(color: Colors.red),
),
)
: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
const Text(
'Análisis de Temperaturas',
style: TextStyle(
fontSize: 18,
color: Color.fromARGB(255, 4, 0, 10),
height: 1.4, // Mejor legibilidad con interlineado
),
),
const SizedBox(height: 16),
Expanded(
child: CustomPaint(
painter: HistogramPainter(
data: histogramData,
gaussPoints: gaussPoints,
maxValue: histogramData.reduce(max).toDouble(),
minVal: minVal,
maxVal: maxVal,
),
child: Container(),
),
),
const SizedBox(height: 20),
Text(
'Media: ${media.toStringAsFixed(2)} °C, '
'Varianza: ${varianza.toStringAsFixed(2)}',
style: const TextStyle(fontSize: 16),
),
],
),
),
);
}
}
class HistogramPainter extends CustomPainter {
final List<int> data;
final List<double> gaussPoints;
final double maxValue;
final double minVal;
final double maxVal;
HistogramPainter({
required this.data,
required this.gaussPoints,
required this.maxValue,
required this.minVal,
required this.maxVal,
});
@override
void paint(Canvas canvas, Size size) {
final barPaint =
Paint()
..style = PaintingStyle.fill
..color = Colors.blue.withOpacity(0.6);
final curvePaint =
Paint()
..style = PaintingStyle.stroke
..color = Colors.red
..strokeWidth = 2.0;
final axisPaint =
Paint()
..color = Colors.black87
..strokeWidth = 1.5;
const binCount = 15;
final binWidth = (size.width - 50) / binCount;
final textStyle = TextStyle(color: Colors.black, fontSize: 10);
final textPainter = TextPainter(textDirection: TextDirection.ltr);
canvas.drawLine(
Offset(40, size.height - 30),
Offset(size.width, size.height - 30),
axisPaint,
);
canvas.drawLine(Offset(40, 0), Offset(40, size.height - 30), axisPaint);
for (int i = 0; i < binCount; i++) {
final x = 40 + (i * binWidth) + (binWidth / 2);
final tempValue = minVal + (i * ((maxVal - minVal) / binCount));
final label = tempValue.toStringAsFixed(1);
textPainter.text = TextSpan(text: label, style: textStyle);
textPainter.layout();
textPainter.paint(
canvas,
Offset(x - (textPainter.width / 2), size.height - 20),
);
}
const yTicks = 5;
for (int i = 0; i <= yTicks; i++) {
final y = size.height - 30 - ((i / yTicks) * (size.height - 40));
final value = (i / yTicks * maxValue).toStringAsFixed(0);
textPainter.text = TextSpan(text: value, style: textStyle);
textPainter.layout();
textPainter.paint(
canvas,
Offset(30 - textPainter.width, y - (textPainter.height / 2)),
);
canvas.drawLine(Offset(35, y), Offset(40, y), axisPaint);
}
for (int i = 0; i < data.length; i++) {
final barHeight = (data[i] / maxValue) * (size.height - 40);
final left = 40 + (i * binWidth);
final top = size.height - 30 - barHeight;
canvas.drawRect(
Rect.fromLTRB(left, top, left + binWidth, size.height - 30),
barPaint,
);
}
final maxGauss = gaussPoints.reduce(max);
final path = Path();
for (int i = 0; i < gaussPoints.length; i++) {
final x = 40 + (i * binWidth) + (binWidth / 2);
final y =
size.height - 30 - ((gaussPoints[i] / maxGauss) * (size.height - 40));
i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
}
canvas.drawPath(path, curvePaint);
}
@override
bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}