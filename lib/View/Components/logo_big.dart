import 'package:flutter/material.dart';

class LogoBig extends StatelessWidget {
  const LogoBig({super.key});
  final double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: _size,
      height: _size,
      child: CustomPaint(
        size: Size(_size, (_size * 0.8948948948948949).toDouble()),
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffAE9F8C).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.2612613, size.height * 0.2651007,
                size.width * 0.5075075, size.height * 0.5671141),
            bottomRight: Radius.circular(size.width * 0.2537538),
            bottomLeft: Radius.circular(size.width * 0.2537538),
            topLeft: Radius.circular(size.width * 0.2537538),
            topRight: Radius.circular(size.width * 0.2537538)),
        paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4535526, size.height * 0.4276443);
    path_1.cubicTo(
        size.width * 0.4331351,
        size.height * 0.4276443,
        size.width * 0.4163153,
        size.height * 0.4464396,
        size.width * 0.4163153,
        size.height * 0.4692550);
    path_1.lineTo(size.width * 0.4163153, size.height * 0.4856443);
    path_1.cubicTo(
        size.width * 0.4135195,
        size.height * 0.4844966,
        size.width * 0.4105976,
        size.height * 0.4836477,
        size.width * 0.4074655,
        size.height * 0.4833154);
    path_1.lineTo(size.width * 0.4074414, size.height * 0.4833154);
    path_1.lineTo(size.width * 0.4074174, size.height * 0.4833154);
    path_1.cubicTo(
        size.width * 0.4001231,
        size.height * 0.4825604,
        size.width * 0.3926997,
        size.height * 0.4842215,
        size.width * 0.3862042,
        size.height * 0.4881376);
    path_1.cubicTo(
        size.width * 0.3687327,
        size.height * 0.4986376,
        size.width * 0.3629580,
        size.height * 0.5224195,
        size.width * 0.3699369,
        size.height * 0.5418859);
    path_1.lineTo(size.width * 0.3910300, size.height * 0.6008356);
    path_1.cubicTo(
        size.width * 0.3974985,
        size.height * 0.6188792,
        size.width * 0.4119459,
        size.height * 0.6315906,
        size.width * 0.4287267,
        size.height * 0.6348322);
    path_1.lineTo(size.width * 0.4287267, size.height * 0.6634430);
    path_1.lineTo(size.width * 0.4535526, size.height * 0.6634430);
    path_1.lineTo(size.width * 0.4535526, size.height * 0.6357013);
    path_1.lineTo(size.width * 0.5776787, size.height * 0.6357013);
    path_1.lineTo(size.width * 0.5776787, size.height * 0.6634430);
    path_1.lineTo(size.width * 0.6025015, size.height * 0.6634430);
    path_1.lineTo(size.width * 0.6025015, size.height * 0.6348054);
    path_1.cubicTo(
        size.width * 0.6192913,
        size.height * 0.6315638,
        size.width * 0.6337417,
        size.height * 0.6188725,
        size.width * 0.6402012,
        size.height * 0.6008087);
    path_1.lineTo(size.width * 0.6617057, size.height * 0.5415872);
    path_1.lineTo(size.width * 0.6617297, size.height * 0.5415604);
    path_1.cubicTo(
        size.width * 0.6684204,
        size.height * 0.5228423,
        size.width * 0.6632733,
        size.height * 0.5001242,
        size.width * 0.6469640,
        size.height * 0.4891678);
    path_1.cubicTo(
        size.width * 0.6411441,
        size.height * 0.4852550,
        size.width * 0.6344414,
        size.height * 0.4831275,
        size.width * 0.6276667,
        size.height * 0.4831275);
    path_1.cubicTo(
        size.width * 0.6232252,
        size.height * 0.4831275,
        size.width * 0.6189459,
        size.height * 0.4841040,
        size.width * 0.6149159,
        size.height * 0.4857550);
    path_1.lineTo(size.width * 0.6149159, size.height * 0.4692550);
    path_1.cubicTo(
        size.width * 0.6149159,
        size.height * 0.4464396,
        size.width * 0.5980961,
        size.height * 0.4276443,
        size.width * 0.5776787,
        size.height * 0.4276443);
    path_1.lineTo(size.width * 0.4535526, size.height * 0.4276443);
    path_1.close();
    path_1.moveTo(size.width * 0.4535526, size.height * 0.4553859);
    path_1.lineTo(size.width * 0.5776787, size.height * 0.4553859);
    path_1.cubicTo(
        size.width * 0.5846907,
        size.height * 0.4553859,
        size.width * 0.5900901,
        size.height * 0.4614195,
        size.width * 0.5900901,
        size.height * 0.4692550);
    path_1.lineTo(size.width * 0.5900901, size.height * 0.5174497);
    path_1.lineTo(size.width * 0.5773393, size.height * 0.5524799);
    path_1.lineTo(size.width * 0.4539399, size.height * 0.5524799);
    path_1.lineTo(size.width * 0.4411381, size.height * 0.5167181);
    path_1.lineTo(size.width * 0.4411381, size.height * 0.4692550);
    path_1.cubicTo(
        size.width * 0.4411381,
        size.height * 0.4614195,
        size.width * 0.4465375,
        size.height * 0.4553859,
        size.width * 0.4535526,
        size.height * 0.4553859);
    path_1.close();
    path_1.moveTo(size.width * 0.6276667, size.height * 0.5108658);
    path_1.cubicTo(
        size.width * 0.6299520,
        size.height * 0.5108658,
        size.width * 0.6320180,
        size.height * 0.5114832,
        size.width * 0.6341652,
        size.height * 0.5129262);
    path_1.cubicTo(
        size.width * 0.6390811,
        size.height * 0.5162282,
        size.width * 0.6411652,
        size.height * 0.5242953,
        size.width * 0.6386727,
        size.height * 0.5312651);
    path_1.lineTo(size.width * 0.6171441, size.height * 0.5904866);
    path_1.lineTo(size.width * 0.6171441, size.height * 0.5905134);
    path_1.cubicTo(
        size.width * 0.6133664,
        size.height * 0.6010805,
        size.width * 0.6042823,
        size.height * 0.6079597,
        size.width * 0.5940901,
        size.height * 0.6079597);
    path_1.lineTo(size.width * 0.4371381, size.height * 0.6079597);
    path_1.cubicTo(
        size.width * 0.4269700,
        size.height * 0.6079597,
        size.width * 0.4178769,
        size.height * 0.6010906,
        size.width * 0.4140841,
        size.height * 0.5905403);
    path_1.lineTo(size.width * 0.4140841, size.height * 0.5905134);
    path_1.lineTo(size.width * 0.3929910, size.height * 0.5315906);
    path_1.lineTo(size.width * 0.3929910, size.height * 0.5315638);
    path_1.cubicTo(
        size.width * 0.3903694,
        size.height * 0.5242483,
        size.width * 0.3926967,
        size.height * 0.5157315,
        size.width * 0.3979610,
        size.height * 0.5125738);
    path_1.lineTo(size.width * 0.3979850, size.height * 0.5125470);
    path_1.cubicTo(
        size.width * 0.4002703,
        size.height * 0.5111678,
        size.width * 0.4024895,
        size.height * 0.5106544,
        size.width * 0.4051141,
        size.height * 0.5109228);
    path_1.cubicTo(
        size.width * 0.4094144,
        size.height * 0.5113758,
        size.width * 0.4140000,
        size.height * 0.5155369,
        size.width * 0.4161201,
        size.height * 0.5214597);
    path_1.lineTo(size.width * 0.4371381, size.height * 0.5802181);
    path_1.lineTo(size.width * 0.5940420, size.height * 0.5802181);
    path_1.lineTo(size.width * 0.6160781, size.height * 0.5196711);
    path_1.lineTo(size.width * 0.6161021, size.height * 0.5196174);
    path_1.cubicTo(
        size.width * 0.6180060,
        size.height * 0.5142953,
        size.width * 0.6225435,
        size.height * 0.5108658,
        size.width * 0.6276667,
        size.height * 0.5108658);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(
                0, 0, size.width * 0.2762763, size.height * 0.3087248),
            bottomRight: Radius.circular(size.width * 0.1381381),
            bottomLeft: Radius.circular(size.width * 0.1381381),
            topLeft: Radius.circular(size.width * 0.1381381),
            topRight: Radius.circular(size.width * 0.1381381)),
        paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.07465826, size.height * 0.07641913);
    path_3.cubicTo(
        size.width * 0.06930541,
        size.height * 0.07641913,
        size.width * 0.06493994,
        size.height * 0.08129765,
        size.width * 0.06493994,
        size.height * 0.08727886);
    path_3.lineTo(size.width * 0.06493994, size.height * 0.1372782);
    path_3.cubicTo(
        size.width * 0.06914114,
        size.height * 0.1332057,
        size.width * 0.07445556,
        size.height * 0.1299111,
        size.width * 0.08113694,
        size.height * 0.1273235);
    path_3.lineTo(size.width * 0.08113694, size.height * 0.1126178);
    path_3.cubicTo(
        size.width * 0.08113694,
        size.height * 0.1029886,
        size.width * 0.09585345,
        size.height * 0.1017584,
        size.width * 0.1086718,
        size.height * 0.1017584);
    path_3.cubicTo(
        size.width * 0.1214901,
        size.height * 0.1017584,
        size.width * 0.1362066,
        size.height * 0.1029886,
        size.width * 0.1362066,
        size.height * 0.1126178);
    path_3.lineTo(size.width * 0.1362066, size.height * 0.1198577);
    path_3.cubicTo(
        size.width * 0.1372949,
        size.height * 0.1198433,
        size.width * 0.1383324,
        size.height * 0.1198577,
        size.width * 0.1394459,
        size.height * 0.1198577);
    path_3.cubicTo(
        size.width * 0.1405595,
        size.height * 0.1198577,
        size.width * 0.1415970,
        size.height * 0.1198433,
        size.width * 0.1426853,
        size.height * 0.1198577);
    path_3.lineTo(size.width * 0.1426853, size.height * 0.1126178);
    path_3.cubicTo(
        size.width * 0.1426853,
        size.height * 0.1029886,
        size.width * 0.1574018,
        size.height * 0.1017584,
        size.width * 0.1702201,
        size.height * 0.1017584);
    path_3.cubicTo(
        size.width * 0.1830384,
        size.height * 0.1017584,
        size.width * 0.1977550,
        size.height * 0.1029886,
        size.width * 0.1977550,
        size.height * 0.1126178);
    path_3.lineTo(size.width * 0.1977550, size.height * 0.1272104);
    path_3.cubicTo(
        size.width * 0.2044237,
        size.height * 0.1297839,
        size.width * 0.2097129,
        size.height * 0.1331493,
        size.width * 0.2139520,
        size.height * 0.1372782);
    path_3.lineTo(size.width * 0.2139520, size.height * 0.08727886);
    path_3.cubicTo(
        size.width * 0.2139520,
        size.height * 0.08129765,
        size.width * 0.2095865,
        size.height * 0.07641913,
        size.width * 0.2042339,
        size.height * 0.07641913);
    path_3.lineTo(size.width * 0.07465826, size.height * 0.07641913);
    path_3.close();
    path_3.moveTo(size.width * 0.1394459, size.height * 0.1270973);
    path_3.cubicTo(
        size.width * 0.07759369,
        size.height * 0.1270973,
        size.width * 0.05841051,
        size.height * 0.1398799,
        size.width * 0.05846126,
        size.height * 0.1741554);
    path_3.lineTo(size.width * 0.2204306, size.height * 0.1741554);
    path_3.cubicTo(
        size.width * 0.2204814,
        size.height * 0.1396537,
        size.width * 0.2012982,
        size.height * 0.1270973,
        size.width * 0.1394459,
        size.height * 0.1270973);
    path_3.close();
    path_3.moveTo(size.width * 0.05846126, size.height * 0.1813953);
    path_3.lineTo(size.width * 0.05846126, size.height * 0.2212134);
    path_3.lineTo(size.width * 0.08113694, size.height * 0.2212134);
    path_3.lineTo(size.width * 0.08113694, size.height * 0.2067342);
    path_3.cubicTo(
        size.width * 0.08113694,
        size.height * 0.2015305,
        size.width * 0.08295916,
        size.height * 0.1994943,
        size.width * 0.08761562,
        size.height * 0.1994943);
    path_3.lineTo(size.width * 0.1912763, size.height * 0.1994943);
    path_3.cubicTo(
        size.width * 0.1959327,
        size.height * 0.1994943,
        size.width * 0.1977550,
        size.height * 0.2015305,
        size.width * 0.1977550,
        size.height * 0.2067342);
    path_3.lineTo(size.width * 0.1977550, size.height * 0.2212134);
    path_3.lineTo(size.width * 0.2204306, size.height * 0.2212134);
    path_3.lineTo(size.width * 0.2204306, size.height * 0.1813953);
    path_3.lineTo(size.width * 0.05846126, size.height * 0.1813953);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffAE9F8C).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.7627628, size.height * 0.05033557,
                size.width * 0.2305039, size.height * 0.2575765),
            bottomRight: Radius.circular(size.width * 0.1152520),
            bottomLeft: Radius.circular(size.width * 0.1152520),
            topLeft: Radius.circular(size.width * 0.1152520),
            topRight: Radius.circular(size.width * 0.1152520)),
        paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.8375526, size.height * 0.1073235);
    path_5.cubicTo(
        size.width * 0.8368078,
        size.height * 0.1073235,
        size.width * 0.8360931,
        size.height * 0.1076544,
        size.width * 0.8355676,
        size.height * 0.1082433);
    path_5.cubicTo(
        size.width * 0.8350390,
        size.height * 0.1088322,
        size.width * 0.8347447,
        size.height * 0.1096305,
        size.width * 0.8347447,
        size.height * 0.1104634);
    path_5.lineTo(size.width * 0.8347447, size.height * 0.1214034);
    path_5.lineTo(size.width * 0.8162492, size.height * 0.1361641);
    path_5.cubicTo(
        size.width * 0.8158859,
        size.height * 0.1364550,
        size.width * 0.8155886,
        size.height * 0.1368389,
        size.width * 0.8153844,
        size.height * 0.1372836);
    path_5.cubicTo(
        size.width * 0.8151802,
        size.height * 0.1377285,
        size.width * 0.8150751,
        size.height * 0.1382211,
        size.width * 0.8150751,
        size.height * 0.1387211);
    path_5.lineTo(size.width * 0.8150751, size.height * 0.1512802);
    path_5.cubicTo(
        size.width * 0.8150751,
        size.height * 0.1521128,
        size.width * 0.8153724,
        size.height * 0.1529114,
        size.width * 0.8158979,
        size.height * 0.1535003);
    path_5.cubicTo(
        size.width * 0.8164264,
        size.height * 0.1540889,
        size.width * 0.8171411,
        size.height * 0.1544198,
        size.width * 0.8178859,
        size.height * 0.1544198);
    path_5.lineTo(size.width * 0.8796997, size.height * 0.1544198);
    path_5.cubicTo(
        size.width * 0.8804444,
        size.height * 0.1544198,
        size.width * 0.8811592,
        size.height * 0.1540889,
        size.width * 0.8816877,
        size.height * 0.1535003);
    path_5.cubicTo(
        size.width * 0.8822132,
        size.height * 0.1529114,
        size.width * 0.8825105,
        size.height * 0.1521128,
        size.width * 0.8825105,
        size.height * 0.1512802);
    path_5.lineTo(size.width * 0.8825105, size.height * 0.1387211);
    path_5.cubicTo(
        size.width * 0.8825105,
        size.height * 0.1382211,
        size.width * 0.8824024,
        size.height * 0.1377285,
        size.width * 0.8821982,
        size.height * 0.1372836);
    path_5.cubicTo(
        size.width * 0.8819940,
        size.height * 0.1368389,
        size.width * 0.8816997,
        size.height * 0.1364550,
        size.width * 0.8813363,
        size.height * 0.1361641);
    path_5.lineTo(size.width * 0.8628408, size.height * 0.1214094);
    path_5.lineTo(size.width * 0.8628408, size.height * 0.1104634);
    path_5.cubicTo(
        size.width * 0.8628408,
        size.height * 0.1096305,
        size.width * 0.8625435,
        size.height * 0.1088322,
        size.width * 0.8620180,
        size.height * 0.1082433);
    path_5.cubicTo(
        size.width * 0.8614925,
        size.height * 0.1076544,
        size.width * 0.8607778,
        size.height * 0.1073235,
        size.width * 0.8600300,
        size.height * 0.1073235);
    path_5.lineTo(size.width * 0.8375526, size.height * 0.1073235);
    path_5.close();
    path_5.moveTo(size.width * 0.8403634, size.height * 0.1136030);
    path_5.lineTo(size.width * 0.8572222, size.height * 0.1136030);
    path_5.lineTo(size.width * 0.8572222, size.height * 0.1230225);
    path_5.cubicTo(
        size.width * 0.8572222,
        size.height * 0.1235221,
        size.width * 0.8573273,
        size.height * 0.1240151,
        size.width * 0.8575315,
        size.height * 0.1244601);
    path_5.cubicTo(
        size.width * 0.8577357,
        size.height * 0.1249047,
        size.width * 0.8580330,
        size.height * 0.1252886,
        size.width * 0.8583964,
        size.height * 0.1255795);
    path_5.lineTo(size.width * 0.8768889, size.height * 0.1403339);
    path_5.lineTo(size.width * 0.8768889, size.height * 0.1481403);
    path_5.lineTo(size.width * 0.8206937, size.height * 0.1481403);
    path_5.lineTo(size.width * 0.8206937, size.height * 0.1403339);
    path_5.lineTo(size.width * 0.8391892, size.height * 0.1255795);
    path_5.cubicTo(
        size.width * 0.8395526,
        size.height * 0.1252886,
        size.width * 0.8398498,
        size.height * 0.1249047,
        size.width * 0.8400541,
        size.height * 0.1244601);
    path_5.cubicTo(
        size.width * 0.8402583,
        size.height * 0.1240151,
        size.width * 0.8403634,
        size.height * 0.1235221,
        size.width * 0.8403634,
        size.height * 0.1230225);
    path_5.lineTo(size.width * 0.8403634, size.height * 0.1136030);
    path_5.close();
    path_5.moveTo(size.width * 0.8277177, size.height * 0.1732584);
    path_5.cubicTo(
        size.width * 0.8258799,
        size.height * 0.1732584,
        size.width * 0.8243423,
        size.height * 0.1745711,
        size.width * 0.8237628,
        size.height * 0.1763983);
    path_5.lineTo(size.width * 0.8150751, size.height * 0.1763983);
    path_5.cubicTo(
        size.width * 0.8143303,
        size.height * 0.1763983,
        size.width * 0.8136156,
        size.height * 0.1767292,
        size.width * 0.8130871,
        size.height * 0.1773181);
    path_5.cubicTo(
        size.width * 0.8125616,
        size.height * 0.1779067,
        size.width * 0.8122643,
        size.height * 0.1787054,
        size.width * 0.8122643,
        size.height * 0.1795379);
    path_5.lineTo(size.width * 0.8122643, size.height * 0.2486128);
    path_5.cubicTo(
        size.width * 0.8122643,
        size.height * 0.2494453,
        size.width * 0.8125616,
        size.height * 0.2502440,
        size.width * 0.8130871,
        size.height * 0.2508329);
    path_5.cubicTo(
        size.width * 0.8136156,
        size.height * 0.2514215,
        size.width * 0.8143303,
        size.height * 0.2517523,
        size.width * 0.8150751,
        size.height * 0.2517523);
    path_5.lineTo(size.width * 0.9445916, size.height * 0.2517523);
    path_5.cubicTo(
        size.width * 0.9453393,
        size.height * 0.2517523,
        size.width * 0.9460511,
        size.height * 0.2514215,
        size.width * 0.9465796,
        size.height * 0.2508329);
    path_5.cubicTo(
        size.width * 0.9471051,
        size.height * 0.2502440,
        size.width * 0.9474024,
        size.height * 0.2494453,
        size.width * 0.9474024,
        size.height * 0.2486128);
    path_5.lineTo(size.width * 0.9474024, size.height * 0.1795379);
    path_5.cubicTo(
        size.width * 0.9474024,
        size.height * 0.1787054,
        size.width * 0.9471051,
        size.height * 0.1779067,
        size.width * 0.9465796,
        size.height * 0.1773181);
    path_5.cubicTo(
        size.width * 0.9460511,
        size.height * 0.1767292,
        size.width * 0.9453393,
        size.height * 0.1763983,
        size.width * 0.9445916,
        size.height * 0.1763983);
    path_5.lineTo(size.width * 0.8738228, size.height * 0.1763983);
    path_5.cubicTo(
        size.width * 0.8732432,
        size.height * 0.1745711,
        size.width * 0.8717027,
        size.height * 0.1732584,
        size.width * 0.8698649,
        size.height * 0.1732584);
    path_5.lineTo(size.width * 0.8277177, size.height * 0.1732584);
    path_5.close();
    path_5.moveTo(size.width * 0.8178859, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.8277177, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.8698649, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.8799670, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.8799670, size.height * 0.2454728);
    path_5.lineTo(size.width * 0.8178859, size.height * 0.2454728);
    path_5.lineTo(size.width * 0.8178859, size.height * 0.1826779);
    path_5.close();
    path_5.moveTo(size.width * 0.8855886, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.9417838, size.height * 0.1826779);
    path_5.lineTo(size.width * 0.9417838, size.height * 0.2015164);
    path_5.lineTo(size.width * 0.8855886, size.height * 0.2015164);
    path_5.lineTo(size.width * 0.8855886, size.height * 0.1826779);
    path_5.close();
    path_5.moveTo(size.width * 0.8263153, size.height * 0.1889574);
    path_5.cubicTo(
        size.width * 0.8255676,
        size.height * 0.1889574,
        size.width * 0.8248559,
        size.height * 0.1892883,
        size.width * 0.8243273,
        size.height * 0.1898768);
    path_5.cubicTo(
        size.width * 0.8238018,
        size.height * 0.1904658,
        size.width * 0.8235045,
        size.height * 0.1912644,
        size.width * 0.8235045,
        size.height * 0.1920970);
    path_5.lineTo(size.width * 0.8235045, size.height * 0.2360537);
    path_5.cubicTo(
        size.width * 0.8235045,
        size.height * 0.2368862,
        size.width * 0.8238018,
        size.height * 0.2376849,
        size.width * 0.8243273,
        size.height * 0.2382738);
    path_5.cubicTo(
        size.width * 0.8248559,
        size.height * 0.2388624,
        size.width * 0.8255676,
        size.height * 0.2391933,
        size.width * 0.8263153,
        size.height * 0.2391933);
    path_5.lineTo(size.width * 0.8712703, size.height * 0.2391933);
    path_5.cubicTo(
        size.width * 0.8720150,
        size.height * 0.2391933,
        size.width * 0.8727297,
        size.height * 0.2388624,
        size.width * 0.8732583,
        size.height * 0.2382738);
    path_5.cubicTo(
        size.width * 0.8737838,
        size.height * 0.2376849,
        size.width * 0.8740811,
        size.height * 0.2368862,
        size.width * 0.8740811,
        size.height * 0.2360537);
    path_5.lineTo(size.width * 0.8740811, size.height * 0.1920970);
    path_5.cubicTo(
        size.width * 0.8740811,
        size.height * 0.1912644,
        size.width * 0.8737838,
        size.height * 0.1904658,
        size.width * 0.8732583,
        size.height * 0.1898768);
    path_5.cubicTo(
        size.width * 0.8727297,
        size.height * 0.1892883,
        size.width * 0.8720150,
        size.height * 0.1889574,
        size.width * 0.8712703,
        size.height * 0.1889574);
    path_5.lineTo(size.width * 0.8263153, size.height * 0.1889574);
    path_5.close();
    path_5.moveTo(size.width * 0.8965586, size.height * 0.1889574);
    path_5.cubicTo(
        size.width * 0.8961862,
        size.height * 0.1889513,
        size.width * 0.8958168,
        size.height * 0.1890282,
        size.width * 0.8954715,
        size.height * 0.1891836);
    path_5.cubicTo(
        size.width * 0.8951261,
        size.height * 0.1893386,
        size.width * 0.8948108,
        size.height * 0.1895688,
        size.width * 0.8945465,
        size.height * 0.1898611);
    path_5.cubicTo(
        size.width * 0.8942793,
        size.height * 0.1901530,
        size.width * 0.8940691,
        size.height * 0.1905013,
        size.width * 0.8939249,
        size.height * 0.1908852);
    path_5.cubicTo(
        size.width * 0.8937808,
        size.height * 0.1912691,
        size.width * 0.8937087,
        size.height * 0.1916809,
        size.width * 0.8937087,
        size.height * 0.1920970);
    path_5.cubicTo(
        size.width * 0.8937087,
        size.height * 0.1925131,
        size.width * 0.8937808,
        size.height * 0.1929252,
        size.width * 0.8939249,
        size.height * 0.1933091);
    path_5.cubicTo(
        size.width * 0.8940691,
        size.height * 0.1936930,
        size.width * 0.8942793,
        size.height * 0.1940409,
        size.width * 0.8945465,
        size.height * 0.1943332);
    path_5.cubicTo(
        size.width * 0.8948108,
        size.height * 0.1946252,
        size.width * 0.8951261,
        size.height * 0.1948557,
        size.width * 0.8954715,
        size.height * 0.1950107);
    path_5.cubicTo(
        size.width * 0.8958168,
        size.height * 0.1951658,
        size.width * 0.8961862,
        size.height * 0.1952426,
        size.width * 0.8965586,
        size.height * 0.1952369);
    path_5.lineTo(size.width * 0.9302763, size.height * 0.1952369);
    path_5.cubicTo(
        size.width * 0.9306486,
        size.height * 0.1952426,
        size.width * 0.9310180,
        size.height * 0.1951658,
        size.width * 0.9313634,
        size.height * 0.1950107);
    path_5.cubicTo(
        size.width * 0.9317087,
        size.height * 0.1948557,
        size.width * 0.9320240,
        size.height * 0.1946252,
        size.width * 0.9322883,
        size.height * 0.1943332);
    path_5.cubicTo(
        size.width * 0.9325526,
        size.height * 0.1940409,
        size.width * 0.9327628,
        size.height * 0.1936930,
        size.width * 0.9329069,
        size.height * 0.1933091);
    path_5.cubicTo(
        size.width * 0.9330511,
        size.height * 0.1929252,
        size.width * 0.9331261,
        size.height * 0.1925131,
        size.width * 0.9331261,
        size.height * 0.1920970);
    path_5.cubicTo(
        size.width * 0.9331261,
        size.height * 0.1916809,
        size.width * 0.9330511,
        size.height * 0.1912691,
        size.width * 0.9329069,
        size.height * 0.1908852);
    path_5.cubicTo(
        size.width * 0.9327628,
        size.height * 0.1905013,
        size.width * 0.9325526,
        size.height * 0.1901530,
        size.width * 0.9322883,
        size.height * 0.1898611);
    path_5.cubicTo(
        size.width * 0.9320240,
        size.height * 0.1895688,
        size.width * 0.9317087,
        size.height * 0.1893386,
        size.width * 0.9313634,
        size.height * 0.1891836);
    path_5.cubicTo(
        size.width * 0.9310180,
        size.height * 0.1890282,
        size.width * 0.9306486,
        size.height * 0.1889513,
        size.width * 0.9302763,
        size.height * 0.1889574);
    path_5.lineTo(size.width * 0.8965586, size.height * 0.1889574);
    path_5.close();
    path_5.moveTo(size.width * 0.8291231, size.height * 0.1952369);
    path_5.lineTo(size.width * 0.8684595, size.height * 0.1952369);
    path_5.lineTo(size.width * 0.8684595, size.height * 0.2329138);
    path_5.lineTo(size.width * 0.8291231, size.height * 0.2329138);
    path_5.lineTo(size.width * 0.8291231, size.height * 0.1952369);
    path_5.close();
    path_5.moveTo(size.width * 0.8855886, size.height * 0.2077960);
    path_5.lineTo(size.width * 0.9417838, size.height * 0.2077960);
    path_5.lineTo(size.width * 0.9417838, size.height * 0.2454728);
    path_5.lineTo(size.width * 0.8855886, size.height * 0.2454728);
    path_5.lineTo(size.width * 0.8855886, size.height * 0.2077960);
    path_5.close();
    path_5.moveTo(size.width * 0.8965135, size.height * 0.2171721);
    path_5.cubicTo(
        size.width * 0.8957688,
        size.height * 0.2171852,
        size.width * 0.8950601,
        size.height * 0.2175275,
        size.width * 0.8945435,
        size.height * 0.2181242);
    path_5.cubicTo(
        size.width * 0.8940240,
        size.height * 0.2187211,
        size.width * 0.8937387,
        size.height * 0.2195232,
        size.width * 0.8937477,
        size.height * 0.2203550);
    path_5.lineTo(size.width * 0.8937477, size.height * 0.2360537);
    path_5.cubicTo(
        size.width * 0.8937417,
        size.height * 0.2364698,
        size.width * 0.8938108,
        size.height * 0.2368829,
        size.width * 0.8939520,
        size.height * 0.2372688);
    path_5.cubicTo(
        size.width * 0.8940901,
        size.height * 0.2376550,
        size.width * 0.8942943,
        size.height * 0.2380064,
        size.width * 0.8945556,
        size.height * 0.2383027);
    path_5.cubicTo(
        size.width * 0.8948198,
        size.height * 0.2385990,
        size.width * 0.8951291,
        size.height * 0.2388342,
        size.width * 0.8954745,
        size.height * 0.2389950);
    path_5.cubicTo(
        size.width * 0.8958168,
        size.height * 0.2391554,
        size.width * 0.8961862,
        size.height * 0.2392383,
        size.width * 0.8965586,
        size.height * 0.2392383);
    path_5.cubicTo(
        size.width * 0.8969309,
        size.height * 0.2392383,
        size.width * 0.8973003,
        size.height * 0.2391554,
        size.width * 0.8976426,
        size.height * 0.2389950);
    path_5.cubicTo(
        size.width * 0.8979850,
        size.height * 0.2388342,
        size.width * 0.8982973,
        size.height * 0.2385990,
        size.width * 0.8985586,
        size.height * 0.2383027);
    path_5.cubicTo(
        size.width * 0.8988198,
        size.height * 0.2380064,
        size.width * 0.8990270,
        size.height * 0.2376550,
        size.width * 0.8991652,
        size.height * 0.2372688);
    path_5.cubicTo(
        size.width * 0.8993033,
        size.height * 0.2368829,
        size.width * 0.8993724,
        size.height * 0.2364698,
        size.width * 0.8993664,
        size.height * 0.2360537);
    path_5.lineTo(size.width * 0.8993664, size.height * 0.2203550);
    path_5.cubicTo(
        size.width * 0.8993724,
        size.height * 0.2199349,
        size.width * 0.8993033,
        size.height * 0.2195178,
        size.width * 0.8991622,
        size.height * 0.2191289);
    path_5.cubicTo(
        size.width * 0.8990180,
        size.height * 0.2187396,
        size.width * 0.8988078,
        size.height * 0.2183862,
        size.width * 0.8985435,
        size.height * 0.2180893);
    path_5.cubicTo(
        size.width * 0.8982763,
        size.height * 0.2177926,
        size.width * 0.8979610,
        size.height * 0.2175584,
        size.width * 0.8976126,
        size.height * 0.2174010);
    path_5.cubicTo(
        size.width * 0.8972643,
        size.height * 0.2172433,
        size.width * 0.8968889,
        size.height * 0.2171658,
        size.width * 0.8965135,
        size.height * 0.2171721);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffAE9F8C).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.02402402, size.height * 0.7046980,
                size.width * 0.2305039, size.height * 0.2575765),
            bottomRight: Radius.circular(size.width * 0.1152520),
            bottomLeft: Radius.circular(size.width * 0.1152520),
            topLeft: Radius.circular(size.width * 0.1152520),
            topRight: Radius.circular(size.width * 0.1152520)),
        paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.1950006, size.height * 0.7787886);
    path_7.lineTo(size.width * 0.1962321, size.height * 0.7865436);
    path_7.cubicTo(
        size.width * 0.2045682,
        size.height * 0.8129530,
        size.width * 0.1897547,
        size.height * 0.8132215,
        size.width * 0.1839042,
        size.height * 0.7991141);
    path_7.cubicTo(
        size.width * 0.1790213,
        size.height * 0.7969530,
        size.width * 0.1758982,
        size.height * 0.7983792,
        size.width * 0.1751174,
        size.height * 0.8046208);
    path_7.lineTo(size.width * 0.1811327, size.height * 0.8354530);
    path_7.lineTo(size.width * 0.1809018, size.height * 0.8616779);
    path_7.cubicTo(
        size.width * 0.1844871,
        size.height * 0.8565403,
        size.width * 0.1873462,
        size.height * 0.8505570,
        size.width * 0.1892159,
        size.height * 0.8437617);
    path_7.cubicTo(
        size.width * 0.1907114,
        size.height * 0.8383289,
        size.width * 0.1958583,
        size.height * 0.8352819,
        size.width * 0.2007189,
        size.height * 0.8369530);
    path_7.cubicTo(
        size.width * 0.2055799,
        size.height * 0.8386242,
        size.width * 0.2083072,
        size.height * 0.8443758,
        size.width * 0.2068117,
        size.height * 0.8498054);
    path_7.cubicTo(
        size.width * 0.2018189,
        size.height * 0.8679933,
        size.width * 0.1916351,
        size.height * 0.8819564,
        size.width * 0.1789114,
        size.height * 0.8912081);
    path_7.cubicTo(
        size.width * 0.1676502,
        size.height * 0.8994060,
        size.width * 0.1543874,
        size.height * 0.9038658,
        size.width * 0.1410147,
        size.height * 0.9042483);
    path_7.cubicTo(
        size.width * 0.1276198,
        size.height * 0.9046409,
        size.width * 0.1140712,
        size.height * 0.9009161,
        size.width * 0.1022601,
        size.height * 0.8927685);
    path_7.cubicTo(
        size.width * 0.08939309,
        size.height * 0.8838826,
        size.width * 0.07867087,
        size.height * 0.8698020,
        size.width * 0.07257808,
        size.height * 0.8501141);
    path_7.cubicTo(
        size.width * 0.07092853,
        size.height * 0.8447550,
        size.width * 0.07347988,
        size.height * 0.8389060,
        size.width * 0.07827477,
        size.height * 0.8370638);
    path_7.cubicTo(
        size.width * 0.08306967,
        size.height * 0.8352215,
        size.width * 0.08830450,
        size.height * 0.8380705,
        size.width * 0.08995405,
        size.height * 0.8434295);
    path_7.cubicTo(
        size.width * 0.09168048,
        size.height * 0.8490067,
        size.width * 0.09388018,
        size.height * 0.8539732,
        size.width * 0.09645345,
        size.height * 0.8583490);
    path_7.lineTo(size.width * 0.09667327, size.height * 0.8364866);
    path_7.cubicTo(
        size.width * 0.09713514,
        size.height * 0.8312148,
        size.width * 0.09880691,
        size.height * 0.8261275,
        size.width * 0.1022270,
        size.height * 0.8213322);
    path_7.lineTo(size.width * 0.09236246, size.height * 0.8213322);
    path_7.cubicTo(
        size.width * 0.08367447,
        size.height * 0.8205973,
        size.width * 0.08270661,
        size.height * 0.8091678,
        size.width * 0.09236246,
        size.height * 0.8068691);
    path_7.lineTo(size.width * 0.1187450, size.height * 0.8068691);
    path_7.cubicTo(
        size.width * 0.1191189,
        size.height * 0.8130738,
        size.width * 0.1215273,
        size.height * 0.8186678,
        size.width * 0.1252225,
        size.height * 0.8228087);
    path_7.cubicTo(
        size.width * 0.1292586,
        size.height * 0.8273188,
        size.width * 0.1348339,
        size.height * 0.8301074,
        size.width * 0.1409925,
        size.height * 0.8301074);
    path_7.cubicTo(
        size.width * 0.1471511,
        size.height * 0.8301074,
        size.width * 0.1527267,
        size.height * 0.8273188,
        size.width * 0.1567628,
        size.height * 0.8228087);
    path_7.cubicTo(
        size.width * 0.1607988,
        size.height * 0.8182987,
        size.width * 0.1632952,
        size.height * 0.8120671,
        size.width * 0.1632952,
        size.height * 0.8051846);
    path_7.cubicTo(
        size.width * 0.1632952,
        size.height * 0.7983054,
        size.width * 0.1607988,
        size.height * 0.7920738,
        size.width * 0.1567628,
        size.height * 0.7875638);
    path_7.cubicTo(
        size.width * 0.1540024,
        size.height * 0.7844799,
        size.width * 0.1505273,
        size.height * 0.7822047,
        size.width * 0.1466342,
        size.height * 0.7810638);
    path_7.cubicTo(
        size.width * 0.1502084,
        size.height * 0.7736879,
        size.width * 0.1561910,
        size.height * 0.7670906,
        size.width * 0.1651096,
        size.height * 0.7613993);
    path_7.cubicTo(
        size.width * 0.1738087,
        size.height * 0.7576644,
        size.width * 0.1836952,
        size.height * 0.7568423,
        size.width * 0.1960892,
        size.height * 0.7622617);
    path_7.cubicTo(
        size.width * 0.2009829,
        size.height * 0.7647181,
        size.width * 0.2037432,
        size.height * 0.7671879,
        size.width * 0.2028964,
        size.height * 0.7696477);
    path_7.cubicTo(
        size.width * 0.2020826,
        size.height * 0.7720302,
        size.width * 0.2005432,
        size.height * 0.7719698,
        size.width * 0.1988495,
        size.height * 0.7724966);
    path_7.cubicTo(
        size.width * 0.1961772,
        size.height * 0.7733322,
        size.width * 0.1946925,
        size.height * 0.7752383,
        size.width * 0.1950006,
        size.height * 0.7787886);
    path_7.close();
    path_7.moveTo(size.width * 0.1718072, size.height * 0.8716577);
    path_7.cubicTo(
        size.width * 0.1662315,
        size.height * 0.8292852,
        size.width * 0.1122456,
        size.height * 0.8288658,
        size.width * 0.1058781,
        size.height * 0.8703557);
    path_7.cubicTo(
        size.width * 0.1078027,
        size.height * 0.8721980,
        size.width * 0.1098261,
        size.height * 0.8738322,
        size.width * 0.1119156,
        size.height * 0.8752819);
    path_7.cubicTo(
        size.width * 0.1205817,
        size.height * 0.8812651,
        size.width * 0.1306000,
        size.height * 0.8839832,
        size.width * 0.1405748,
        size.height * 0.8837013);
    path_7.cubicTo(
        size.width * 0.1505712,
        size.height * 0.8834161,
        size.width * 0.1604688,
        size.height * 0.8800738,
        size.width * 0.1688817,
        size.height * 0.8739564);
    path_7.cubicTo(
        size.width * 0.1698826,
        size.height * 0.8732282,
        size.width * 0.1708613,
        size.height * 0.8724664,
        size.width * 0.1718072,
        size.height * 0.8716577);
    path_7.close();
    path_7.moveTo(size.width * 0.1241336, size.height * 0.8068557);
    path_7.lineTo(size.width * 0.1427523, size.height * 0.8068557);
    path_7.cubicTo(
        size.width * 0.1419823,
        size.height * 0.7997047,
        size.width * 0.1424441,
        size.height * 0.7929329,
        size.width * 0.1444126,
        size.height * 0.7866409);
    path_7.cubicTo(
        size.width * 0.1477120,
        size.height * 0.7874027,
        size.width * 0.1506592,
        size.height * 0.7892349,
        size.width * 0.1529577,
        size.height * 0.7917919);
    path_7.cubicTo(
        size.width * 0.1560150,
        size.height * 0.7952081,
        size.width * 0.1579174,
        size.height * 0.7999396,
        size.width * 0.1579174,
        size.height * 0.8051611);
    path_7.cubicTo(
        size.width * 0.1579174,
        size.height * 0.8103826,
        size.width * 0.1560258,
        size.height * 0.8151141,
        size.width * 0.1529577,
        size.height * 0.8185302);
    path_7.cubicTo(
        size.width * 0.1499003,
        size.height * 0.8219463,
        size.width * 0.1456664,
        size.height * 0.8240738,
        size.width * 0.1409925,
        size.height * 0.8240738);
    path_7.cubicTo(
        size.width * 0.1363186,
        size.height * 0.8240738,
        size.width * 0.1320847,
        size.height * 0.8219597,
        size.width * 0.1290276,
        size.height * 0.8185302);
    path_7.cubicTo(
        size.width * 0.1263003,
        size.height * 0.8154966,
        size.width * 0.1244967,
        size.height * 0.8114161,
        size.width * 0.1241336,
        size.height * 0.8068557);
    path_7.close();
    path_7.moveTo(size.width * 0.1875003, size.height * 0.7776711);
    path_7.cubicTo(
        size.width * 0.1887318,
        size.height * 0.7776711,
        size.width * 0.1897438,
        size.height * 0.7788020,
        size.width * 0.1897438,
        size.height * 0.7801779);
    path_7.lineTo(size.width * 0.1897438, size.height * 0.7826107);
    path_7.cubicTo(
        size.width * 0.1897438,
        size.height * 0.7839866,
        size.width * 0.1887318,
        size.height * 0.7851174,
        size.width * 0.1875003,
        size.height * 0.7851174);
    path_7.cubicTo(
        size.width * 0.1862685,
        size.height * 0.7851174,
        size.width * 0.1852568,
        size.height * 0.7839866,
        size.width * 0.1852568,
        size.height * 0.7826107);
    path_7.lineTo(size.width * 0.1852568, size.height * 0.7801779);
    path_7.cubicTo(
        size.width * 0.1852568,
        size.height * 0.7787886,
        size.width * 0.1862577,
        size.height * 0.7776711,
        size.width * 0.1875003,
        size.height * 0.7776711);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffAE9F8C).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.7687688, size.height * 0.7416107,
                size.width * 0.2305039, size.height * 0.2575765),
            bottomRight: Radius.circular(size.width * 0.1152520),
            bottomLeft: Radius.circular(size.width * 0.1152520),
            topLeft: Radius.circular(size.width * 0.1152520),
            topRight: Radius.circular(size.width * 0.1152520)),
        paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.8825075, size.height * 0.8541208);
    path_9.lineTo(size.width * 0.8825075, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.9006757, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.9060631, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.9031832, size.height * 0.9001812);
    path_9.cubicTo(
        size.width * 0.9022673,
        size.height * 0.9001242,
        size.width * 0.9014054,
        size.height * 0.8996779,
        size.width * 0.9007778,
        size.height * 0.8989329);
    path_9.cubicTo(
        size.width * 0.9001471,
        size.height * 0.8981879,
        size.width * 0.8997958,
        size.height * 0.8972047,
        size.width * 0.8997958,
        size.height * 0.8961812);
    path_9.cubicTo(
        size.width * 0.8997958,
        size.height * 0.8951544,
        size.width * 0.9001471,
        size.height * 0.8941711,
        size.width * 0.9007778,
        size.height * 0.8934262);
    path_9.cubicTo(
        size.width * 0.9014054,
        size.height * 0.8926812,
        size.width * 0.9022673,
        size.height * 0.8922349,
        size.width * 0.9031832,
        size.height * 0.8921812);
    path_9.lineTo(size.width * 0.9171712, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.9144985, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.9056997, size.height * 0.8855570);
    path_9.cubicTo(
        size.width * 0.9051081,
        size.height * 0.8855570,
        size.width * 0.9045375,
        size.height * 0.8852919,
        size.width * 0.9041171,
        size.height * 0.8848221);
    path_9.cubicTo(
        size.width * 0.9036997,
        size.height * 0.8843557,
        size.width * 0.9034625,
        size.height * 0.8837181,
        size.width * 0.9034625,
        size.height * 0.8830537);
    path_9.cubicTo(
        size.width * 0.9034625,
        size.height * 0.8823926,
        size.width * 0.9036997,
        size.height * 0.8817550,
        size.width * 0.9041171,
        size.height * 0.8812852);
    path_9.cubicTo(
        size.width * 0.9045375,
        size.height * 0.8808188,
        size.width * 0.9051081,
        size.height * 0.8805537,
        size.width * 0.9056997,
        size.height * 0.8805537);
    path_9.lineTo(size.width * 0.9281682, size.height * 0.8805537);
    path_9.lineTo(size.width * 0.9303664, size.height * 0.8651443);
    path_9.cubicTo(
        size.width * 0.9305345,
        size.height * 0.8641242,
        size.width * 0.9310541,
        size.height * 0.8632181,
        size.width * 0.9318108,
        size.height * 0.8626174);
    path_9.cubicTo(
        size.width * 0.9325676,
        size.height * 0.8620168,
        size.width * 0.9335045,
        size.height * 0.8617718,
        size.width * 0.9344234,
        size.height * 0.8619295);
    path_9.cubicTo(
        size.width * 0.9353393,
        size.height * 0.8620906,
        size.width * 0.9361652,
        size.height * 0.8626443,
        size.width * 0.9367207,
        size.height * 0.8634732);
    path_9.cubicTo(
        size.width * 0.9372793,
        size.height * 0.8643054,
        size.width * 0.9375255,
        size.height * 0.8653423,
        size.width * 0.9374054,
        size.height * 0.8663725);
    path_9.lineTo(size.width * 0.9330060, size.height * 0.8967752);
    path_9.cubicTo(
        size.width * 0.9328769,
        size.height * 0.8977148,
        size.width * 0.9324505,
        size.height * 0.8985671,
        size.width * 0.9318048,
        size.height * 0.8991846);
    path_9.cubicTo(
        size.width * 0.9311592,
        size.height * 0.8998020,
        size.width * 0.9303363,
        size.height * 0.9001409,
        size.width * 0.9294895,
        size.height * 0.9001443);
    path_9.lineTo(size.width * 0.9252883, size.height * 0.9001443);
    path_9.lineTo(size.width * 0.9313363, size.height * 0.9151477);
    path_9.lineTo(size.width * 0.9508889, size.height * 0.9151477);
    path_9.lineTo(size.width * 0.9508889, size.height * 0.9258154);
    path_9.lineTo(size.width * 0.8159970, size.height * 0.9258154);
    path_9.lineTo(size.width * 0.8159970, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8281592, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8342072, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.8299610, size.height * 0.9001812);
    path_9.cubicTo(
        size.width * 0.8291141,
        size.height * 0.9001779,
        size.width * 0.8282913,
        size.height * 0.8998389,
        size.width * 0.8276456,
        size.height * 0.8992215);
    path_9.cubicTo(
        size.width * 0.8270000,
        size.height * 0.8986040,
        size.width * 0.8265736,
        size.height * 0.8977517,
        size.width * 0.8264444,
        size.height * 0.8968121);
    path_9.lineTo(size.width * 0.8220450, size.height * 0.8664094);
    path_9.cubicTo(
        size.width * 0.8219610,
        size.height * 0.8653960,
        size.width * 0.8222252,
        size.height * 0.8643893,
        size.width * 0.8227838,
        size.height * 0.8635872);
    path_9.cubicTo(
        size.width * 0.8233423,
        size.height * 0.8627852,
        size.width * 0.8241532,
        size.height * 0.8622517,
        size.width * 0.8250511,
        size.height * 0.8620940);
    path_9.cubicTo(
        size.width * 0.8259520,
        size.height * 0.8619362,
        size.width * 0.8268679,
        size.height * 0.8621678,
        size.width * 0.8276186,
        size.height * 0.8627416);
    path_9.cubicTo(
        size.width * 0.8283724,
        size.height * 0.8633154,
        size.width * 0.8288979,
        size.height * 0.8641879,
        size.width * 0.8290931,
        size.height * 0.8651812);
    path_9.lineTo(size.width * 0.8312943, size.height * 0.8805906);
    path_9.lineTo(size.width * 0.8538168, size.height * 0.8805906);
    path_9.cubicTo(
        size.width * 0.8544084,
        size.height * 0.8805906,
        size.width * 0.8549790,
        size.height * 0.8808557,
        size.width * 0.8553994,
        size.height * 0.8813221);
    path_9.cubicTo(
        size.width * 0.8558168,
        size.height * 0.8817919,
        size.width * 0.8560541,
        size.height * 0.8824295,
        size.width * 0.8560541,
        size.height * 0.8830906);
    path_9.cubicTo(
        size.width * 0.8560541,
        size.height * 0.8837550,
        size.width * 0.8558168,
        size.height * 0.8843926,
        size.width * 0.8553994,
        size.height * 0.8848591);
    path_9.cubicTo(
        size.width * 0.8549790,
        size.height * 0.8853289,
        size.width * 0.8544084,
        size.height * 0.8855940,
        size.width * 0.8538168,
        size.height * 0.8855940);
    path_9.lineTo(size.width * 0.8450180, size.height * 0.8855940);
    path_9.lineTo(size.width * 0.8423904, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.8563123, size.height * 0.8921812);
    path_9.cubicTo(
        size.width * 0.8572282,
        size.height * 0.8922349,
        size.width * 0.8580871,
        size.height * 0.8926812,
        size.width * 0.8587177,
        size.height * 0.8934262);
    path_9.cubicTo(
        size.width * 0.8593483,
        size.height * 0.8941711,
        size.width * 0.8596997,
        size.height * 0.8951544,
        size.width * 0.8596997,
        size.height * 0.8961812);
    path_9.cubicTo(
        size.width * 0.8596997,
        size.height * 0.8972047,
        size.width * 0.8593483,
        size.height * 0.8981879,
        size.width * 0.8587177,
        size.height * 0.8989329);
    path_9.cubicTo(
        size.width * 0.8580871,
        size.height * 0.8996779,
        size.width * 0.8572282,
        size.height * 0.9001242,
        size.width * 0.8563123,
        size.height * 0.9001812);
    path_9.lineTo(size.width * 0.8533874, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.8588859, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8771411, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8771411, size.height * 0.8541208);
    path_9.lineTo(size.width * 0.8453574, size.height * 0.8541208);
    path_9.cubicTo(
        size.width * 0.8448408,
        size.height * 0.8541208,
        size.width * 0.8443423,
        size.height * 0.8538893,
        size.width * 0.8439730,
        size.height * 0.8534799);
    path_9.cubicTo(
        size.width * 0.8436066,
        size.height * 0.8530705,
        size.width * 0.8434024,
        size.height * 0.8525134,
        size.width * 0.8434024,
        size.height * 0.8519329);
    path_9.cubicTo(
        size.width * 0.8433964,
        size.height * 0.8518591,
        size.width * 0.8433964,
        size.height * 0.8517852,
        size.width * 0.8434024,
        size.height * 0.8517114);
    path_9.cubicTo(
        size.width * 0.8434414,
        size.height * 0.8464966,
        size.width * 0.8444114,
        size.height * 0.8413423,
        size.width * 0.8462523,
        size.height * 0.8365470);
    path_9.cubicTo(
        size.width * 0.8480931,
        size.height * 0.8317550,
        size.width * 0.8507688,
        size.height * 0.8274195,
        size.width * 0.8541231,
        size.height * 0.8237919);
    path_9.cubicTo(
        size.width * 0.8608529,
        size.height * 0.8164765,
        size.width * 0.8698348,
        size.height * 0.8123255,
        size.width * 0.8792192,
        size.height * 0.8121913);
    path_9.cubicTo(
        size.width * 0.8796126,
        size.height * 0.8120436,
        size.width * 0.8800360,
        size.height * 0.8120436,
        size.width * 0.8804294,
        size.height * 0.8121913);
    path_9.cubicTo(
        size.width * 0.8897688,
        size.height * 0.8123624,
        size.width * 0.8986967,
        size.height * 0.8165134,
        size.width * 0.9053934,
        size.height * 0.8237919);
    path_9.cubicTo(
        size.width * 0.9087568,
        size.height * 0.8274530,
        size.width * 0.9114354,
        size.height * 0.8318289,
        size.width * 0.9132703,
        size.height * 0.8366611);
    path_9.cubicTo(
        size.width * 0.9151021,
        size.height * 0.8414933,
        size.width * 0.9160541,
        size.height * 0.8466846,
        size.width * 0.9160721,
        size.height * 0.8519329);
    path_9.cubicTo(
        size.width * 0.9160751,
        size.height * 0.8522215,
        size.width * 0.9160270,
        size.height * 0.8525034,
        size.width * 0.9159279,
        size.height * 0.8527685);
    path_9.cubicTo(
        size.width * 0.9158318,
        size.height * 0.8530336,
        size.width * 0.9156877,
        size.height * 0.8532752,
        size.width * 0.9155075,
        size.height * 0.8534799);
    path_9.cubicTo(
        size.width * 0.9153273,
        size.height * 0.8536812,
        size.width * 0.9151111,
        size.height * 0.8538423,
        size.width * 0.9148739,
        size.height * 0.8539497);
    path_9.cubicTo(
        size.width * 0.9146366,
        size.height * 0.8540570,
        size.width * 0.9143814,
        size.height * 0.8541107,
        size.width * 0.9141261,
        size.height * 0.8541074);
    path_9.lineTo(size.width * 0.8825075, size.height * 0.8541074);
    path_9.lineTo(size.width * 0.8825075, size.height * 0.8541208);
    path_9.close();
    path_9.moveTo(size.width * 0.9306216, size.height * 0.8267416);
    path_9.cubicTo(
        size.width * 0.9305646,
        size.height * 0.8266309,
        size.width * 0.9305255,
        size.height * 0.8265101,
        size.width * 0.9305105,
        size.height * 0.8263826);
    path_9.cubicTo(
        size.width * 0.9304955,
        size.height * 0.8262550,
        size.width * 0.9305045,
        size.height * 0.8261275,
        size.width * 0.9305345,
        size.height * 0.8260034);
    path_9.cubicTo(
        size.width * 0.9305646,
        size.height * 0.8258792,
        size.width * 0.9306156,
        size.height * 0.8257651,
        size.width * 0.9306847,
        size.height * 0.8256644);
    path_9.cubicTo(
        size.width * 0.9307538,
        size.height * 0.8255638,
        size.width * 0.9308408,
        size.height * 0.8254765,
        size.width * 0.9309399,
        size.height * 0.8254128);
    path_9.cubicTo(
        size.width * 0.9310390,
        size.height * 0.8253490,
        size.width * 0.9311502,
        size.height * 0.8253054,
        size.width * 0.9312643,
        size.height * 0.8252886);
    path_9.cubicTo(
        size.width * 0.9313754,
        size.height * 0.8252718,
        size.width * 0.9314925,
        size.height * 0.8252819,
        size.width * 0.9316036,
        size.height * 0.8253154);
    path_9.cubicTo(
        size.width * 0.9317147,
        size.height * 0.8253523,
        size.width * 0.9318168,
        size.height * 0.8254094,
        size.width * 0.9319069,
        size.height * 0.8254899);
    path_9.cubicTo(
        size.width * 0.9319970,
        size.height * 0.8255705,
        size.width * 0.9320721,
        size.height * 0.8256711,
        size.width * 0.9321261,
        size.height * 0.8257819);
    path_9.lineTo(size.width * 0.9332282, size.height * 0.8279329);
    path_9.cubicTo(
        size.width * 0.9332853,
        size.height * 0.8280436,
        size.width * 0.9333213,
        size.height * 0.8281644,
        size.width * 0.9333393,
        size.height * 0.8282919);
    path_9.cubicTo(
        size.width * 0.9333544,
        size.height * 0.8284195,
        size.width * 0.9333453,
        size.height * 0.8285470,
        size.width * 0.9333183,
        size.height * 0.8286711);
    path_9.cubicTo(
        size.width * 0.9332883,
        size.height * 0.8287953,
        size.width * 0.9332372,
        size.height * 0.8289128,
        size.width * 0.9331682,
        size.height * 0.8290134);
    path_9.cubicTo(
        size.width * 0.9330991,
        size.height * 0.8291174,
        size.width * 0.9330120,
        size.height * 0.8292013,
        size.width * 0.9329129,
        size.height * 0.8292651);
    path_9.cubicTo(
        size.width * 0.9328138,
        size.height * 0.8293322,
        size.width * 0.9327057,
        size.height * 0.8293725,
        size.width * 0.9325916,
        size.height * 0.8293893);
    path_9.cubicTo(
        size.width * 0.9324775,
        size.height * 0.8294060,
        size.width * 0.9323634,
        size.height * 0.8293993,
        size.width * 0.9322523,
        size.height * 0.8293658);
    path_9.cubicTo(
        size.width * 0.9321411,
        size.height * 0.8293356,
        size.width * 0.9320360,
        size.height * 0.8292785,
        size.width * 0.9319459,
        size.height * 0.8292013);
    path_9.cubicTo(
        size.width * 0.9318559,
        size.height * 0.8291242,
        size.width * 0.9317778,
        size.height * 0.8290268,
        size.width * 0.9317207,
        size.height * 0.8289161);
    path_9.lineTo(size.width * 0.9306216, size.height * 0.8267416);
    path_9.close();
    path_9.moveTo(size.width * 0.9375616, size.height * 0.8299497);
    path_9.cubicTo(
        size.width * 0.9393604,
        size.height * 0.8299497,
        size.width * 0.9411021,
        size.height * 0.8306477,
        size.width * 0.9424925,
        size.height * 0.8319228);
    path_9.cubicTo(
        size.width * 0.9438829,
        size.height * 0.8331980,
        size.width * 0.9448348,
        size.height * 0.8349732,
        size.width * 0.9451832,
        size.height * 0.8369430);
    path_9.cubicTo(
        size.width * 0.9455345,
        size.height * 0.8389161,
        size.width * 0.9452643,
        size.height * 0.8409597,
        size.width * 0.9444144,
        size.height * 0.8427349);
    path_9.cubicTo(
        size.width * 0.9435676,
        size.height * 0.8445067,
        size.width * 0.9421952,
        size.height * 0.8458960,
        size.width * 0.9405315,
        size.height * 0.8466644);
    path_9.cubicTo(
        size.width * 0.9388709,
        size.height * 0.8474329,
        size.width * 0.9370210,
        size.height * 0.8475336,
        size.width * 0.9353003,
        size.height * 0.8469497);
    path_9.cubicTo(
        size.width * 0.9335796,
        size.height * 0.8463658,
        size.width * 0.9320931,
        size.height * 0.8451342,
        size.width * 0.9310931,
        size.height * 0.8434631);
    path_9.cubicTo(
        size.width * 0.9300931,
        size.height * 0.8417919,
        size.width * 0.9296456,
        size.height * 0.8397852,
        size.width * 0.9298198,
        size.height * 0.8377852);
    path_9.cubicTo(
        size.width * 0.9299970,
        size.height * 0.8357819,
        size.width * 0.9307898,
        size.height * 0.8339128,
        size.width * 0.9320601,
        size.height * 0.8324933);
    path_9.cubicTo(
        size.width * 0.9335225,
        size.height * 0.8308691,
        size.width * 0.9354985,
        size.height * 0.8299530,
        size.width * 0.9375616,
        size.height * 0.8299497);
    path_9.close();
    path_9.moveTo(size.width * 0.9368769, size.height * 0.8244664);
    path_9.cubicTo(
        size.width * 0.9368649,
        size.height * 0.8243289,
        size.width * 0.9368769,
        size.height * 0.8241913,
        size.width * 0.9369129,
        size.height * 0.8240604);
    path_9.cubicTo(
        size.width * 0.9369520,
        size.height * 0.8239262,
        size.width * 0.9370150,
        size.height * 0.8238054,
        size.width * 0.9370961,
        size.height * 0.8237013);
    path_9.cubicTo(
        size.width * 0.9371802,
        size.height * 0.8236007,
        size.width * 0.9372793,
        size.height * 0.8235168,
        size.width * 0.9373934,
        size.height * 0.8234597);
    path_9.cubicTo(
        size.width * 0.9375075,
        size.height * 0.8234027,
        size.width * 0.9376276,
        size.height * 0.8233758,
        size.width * 0.9377538,
        size.height * 0.8233758);
    path_9.cubicTo(
        size.width * 0.9378769,
        size.height * 0.8233758,
        size.width * 0.9380000,
        size.height * 0.8234027,
        size.width * 0.9381111,
        size.height * 0.8234597);
    path_9.cubicTo(
        size.width * 0.9382252,
        size.height * 0.8235168,
        size.width * 0.9383273,
        size.height * 0.8236007,
        size.width * 0.9384084,
        size.height * 0.8237013);
    path_9.cubicTo(
        size.width * 0.9384925,
        size.height * 0.8238054,
        size.width * 0.9385526,
        size.height * 0.8239262,
        size.width * 0.9385916,
        size.height * 0.8240604);
    path_9.cubicTo(
        size.width * 0.9386276,
        size.height * 0.8241913,
        size.width * 0.9386396,
        size.height * 0.8243289,
        size.width * 0.9386276,
        size.height * 0.8244664);
    path_9.lineTo(size.width * 0.9386276, size.height * 0.8269262);
    path_9.cubicTo(
        size.width * 0.9386036,
        size.height * 0.8271644,
        size.width * 0.9385015,
        size.height * 0.8273859,
        size.width * 0.9383393,
        size.height * 0.8275470);
    path_9.cubicTo(
        size.width * 0.9381772,
        size.height * 0.8277081,
        size.width * 0.9379700,
        size.height * 0.8277987,
        size.width * 0.9377538,
        size.height * 0.8277987);
    path_9.cubicTo(
        size.width * 0.9375375,
        size.height * 0.8277987,
        size.width * 0.9373273,
        size.height * 0.8277081,
        size.width * 0.9371652,
        size.height * 0.8275470);
    path_9.cubicTo(
        size.width * 0.9370060,
        size.height * 0.8273859,
        size.width * 0.9369039,
        size.height * 0.8271644,
        size.width * 0.9368769,
        size.height * 0.8269262);
    path_9.lineTo(size.width * 0.9368769, size.height * 0.8244664);
    path_9.close();
    path_9.moveTo(size.width * 0.9433213, size.height * 0.8259799);
    path_9.cubicTo(
        size.width * 0.9433784,
        size.height * 0.8258691,
        size.width * 0.9434565,
        size.height * 0.8257718,
        size.width * 0.9435465,
        size.height * 0.8256946);
    path_9.cubicTo(
        size.width * 0.9436366,
        size.height * 0.8256174,
        size.width * 0.9437387,
        size.height * 0.8255604,
        size.width * 0.9438498,
        size.height * 0.8255268);
    path_9.cubicTo(
        size.width * 0.9439610,
        size.height * 0.8254933,
        size.width * 0.9440751,
        size.height * 0.8254832,
        size.width * 0.9441892,
        size.height * 0.8255000);
    path_9.cubicTo(
        size.width * 0.9443033,
        size.height * 0.8255168,
        size.width * 0.9444114,
        size.height * 0.8255604,
        size.width * 0.9445105,
        size.height * 0.8256242);
    path_9.cubicTo(
        size.width * 0.9447057,
        size.height * 0.8257584,
        size.width * 0.9448498,
        size.height * 0.8259732,
        size.width * 0.9449099,
        size.height * 0.8262215);
    path_9.cubicTo(
        size.width * 0.9449670,
        size.height * 0.8264698,
        size.width * 0.9449399,
        size.height * 0.8267349,
        size.width * 0.9448288,
        size.height * 0.8269631);
    path_9.lineTo(size.width * 0.9437297, size.height * 0.8291141);
    path_9.cubicTo(
        size.width * 0.9436156,
        size.height * 0.8293356,
        size.width * 0.9434264,
        size.height * 0.8295000,
        size.width * 0.9432042,
        size.height * 0.8295671);
    path_9.cubicTo(
        size.width * 0.9429820,
        size.height * 0.8296376,
        size.width * 0.9427447,
        size.height * 0.8296074,
        size.width * 0.9425405,
        size.height * 0.8294799);
    path_9.cubicTo(
        size.width * 0.9423423,
        size.height * 0.8293523,
        size.width * 0.9422012,
        size.height * 0.8291376,
        size.width * 0.9421411,
        size.height * 0.8288893);
    path_9.cubicTo(
        size.width * 0.9420841,
        size.height * 0.8286409,
        size.width * 0.9421171,
        size.height * 0.8283758,
        size.width * 0.9422342,
        size.height * 0.8281544);
    path_9.lineTo(size.width * 0.9433333, size.height * 0.8259799);
    path_9.lineTo(size.width * 0.9433213, size.height * 0.8259799);
    path_9.close();
    path_9.moveTo(size.width * 0.9482042, size.height * 0.8308960);
    path_9.cubicTo(
        size.width * 0.9484054,
        size.height * 0.8307651,
        size.width * 0.9486426,
        size.height * 0.8307315,
        size.width * 0.9488649,
        size.height * 0.8307987);
    path_9.cubicTo(
        size.width * 0.9490871,
        size.height * 0.8308658,
        size.width * 0.9492793,
        size.height * 0.8310268,
        size.width * 0.9493934,
        size.height * 0.8312517);
    path_9.cubicTo(
        size.width * 0.9495075,
        size.height * 0.8314732,
        size.width * 0.9495405,
        size.height * 0.8317383,
        size.width * 0.9494805,
        size.height * 0.8319899);
    path_9.cubicTo(
        size.width * 0.9494204,
        size.height * 0.8322383,
        size.width * 0.9492733,
        size.height * 0.8324497,
        size.width * 0.9490751,
        size.height * 0.8325772);
    path_9.lineTo(size.width * 0.9471502, size.height * 0.8338087);
    path_9.cubicTo(
        size.width * 0.9470511,
        size.height * 0.8338725,
        size.width * 0.9469429,
        size.height * 0.8339161,
        size.width * 0.9468288,
        size.height * 0.8339329);
    path_9.cubicTo(
        size.width * 0.9467147,
        size.height * 0.8339497,
        size.width * 0.9466006,
        size.height * 0.8339430,
        size.width * 0.9464895,
        size.height * 0.8339094);
    path_9.cubicTo(
        size.width * 0.9463784,
        size.height * 0.8338758,
        size.width * 0.9462733,
        size.height * 0.8338188,
        size.width * 0.9461832,
        size.height * 0.8337383);
    path_9.cubicTo(
        size.width * 0.9460931,
        size.height * 0.8336611,
        size.width * 0.9460180,
        size.height * 0.8335638,
        size.width * 0.9459610,
        size.height * 0.8334497);
    path_9.cubicTo(
        size.width * 0.9459039,
        size.height * 0.8333389,
        size.width * 0.9458679,
        size.height * 0.8332181,
        size.width * 0.9458529,
        size.height * 0.8330906);
    path_9.cubicTo(
        size.width * 0.9458378,
        size.height * 0.8329664,
        size.width * 0.9458468,
        size.height * 0.8328356,
        size.width * 0.9458739,
        size.height * 0.8327148);
    path_9.cubicTo(
        size.width * 0.9459039,
        size.height * 0.8325906,
        size.width * 0.9459550,
        size.height * 0.8324732,
        size.width * 0.9460270,
        size.height * 0.8323725);
    path_9.cubicTo(
        size.width * 0.9460961,
        size.height * 0.8322718,
        size.width * 0.9461832,
        size.height * 0.8321879,
        size.width * 0.9462823,
        size.height * 0.8321242);
    path_9.lineTo(size.width * 0.9482042, size.height * 0.8308960);
    path_9.close();
    path_9.moveTo(size.width * 0.9502523, size.height * 0.8378859);
    path_9.cubicTo(
        size.width * 0.9503754,
        size.height * 0.8378725,
        size.width * 0.9504985,
        size.height * 0.8378859,
        size.width * 0.9506156,
        size.height * 0.8379262);
    path_9.cubicTo(
        size.width * 0.9507357,
        size.height * 0.8379698,
        size.width * 0.9508438,
        size.height * 0.8380403,
        size.width * 0.9509369,
        size.height * 0.8381309);
    path_9.cubicTo(
        size.width * 0.9510270,
        size.height * 0.8382248,
        size.width * 0.9511021,
        size.height * 0.8383356,
        size.width * 0.9511532,
        size.height * 0.8384631);
    path_9.cubicTo(
        size.width * 0.9512042,
        size.height * 0.8385872,
        size.width * 0.9512282,
        size.height * 0.8387248,
        size.width * 0.9512282,
        size.height * 0.8388624);
    path_9.cubicTo(
        size.width * 0.9512282,
        size.height * 0.8390034,
        size.width * 0.9512042,
        size.height * 0.8391376,
        size.width * 0.9511532,
        size.height * 0.8392651);
    path_9.cubicTo(
        size.width * 0.9511021,
        size.height * 0.8393926,
        size.width * 0.9510270,
        size.height * 0.8395034,
        size.width * 0.9509369,
        size.height * 0.8395973);
    path_9.cubicTo(
        size.width * 0.9508438,
        size.height * 0.8396879,
        size.width * 0.9507357,
        size.height * 0.8397584,
        size.width * 0.9506156,
        size.height * 0.8398020);
    path_9.cubicTo(
        size.width * 0.9504985,
        size.height * 0.8398423,
        size.width * 0.9503754,
        size.height * 0.8398557,
        size.width * 0.9502523,
        size.height * 0.8398423);
    path_9.lineTo(size.width * 0.9480511, size.height * 0.8398423);
    path_9.cubicTo(
        size.width * 0.9478168,
        size.height * 0.8398423,
        size.width * 0.9475946,
        size.height * 0.8397383,
        size.width * 0.9474294,
        size.height * 0.8395537);
    path_9.cubicTo(
        size.width * 0.9472643,
        size.height * 0.8393691,
        size.width * 0.9471712,
        size.height * 0.8391174,
        size.width * 0.9471712,
        size.height * 0.8388591);
    path_9.cubicTo(
        size.width * 0.9471712,
        size.height * 0.8387282,
        size.width * 0.9471952,
        size.height * 0.8386007,
        size.width * 0.9472402,
        size.height * 0.8384832);
    path_9.cubicTo(
        size.width * 0.9472823,
        size.height * 0.8383658,
        size.width * 0.9473483,
        size.height * 0.8382584,
        size.width * 0.9474294,
        size.height * 0.8381678);
    path_9.cubicTo(
        size.width * 0.9475105,
        size.height * 0.8380772,
        size.width * 0.9476096,
        size.height * 0.8380067,
        size.width * 0.9477147,
        size.height * 0.8379564);
    path_9.cubicTo(
        size.width * 0.9478228,
        size.height * 0.8379094,
        size.width * 0.9479369,
        size.height * 0.8378859,
        size.width * 0.9480511,
        size.height * 0.8378859);
    path_9.lineTo(size.width * 0.9502523, size.height * 0.8378859);
    path_9.close();
    path_9.moveTo(size.width * 0.9488979, size.height * 0.8450872);
    path_9.cubicTo(
        size.width * 0.9489970,
        size.height * 0.8451510,
        size.width * 0.9490841,
        size.height * 0.8452383,
        size.width * 0.9491532,
        size.height * 0.8453389);
    path_9.cubicTo(
        size.width * 0.9492222,
        size.height * 0.8454396,
        size.width * 0.9492733,
        size.height * 0.8455537,
        size.width * 0.9493033,
        size.height * 0.8456779);
    path_9.cubicTo(
        size.width * 0.9493333,
        size.height * 0.8458020,
        size.width * 0.9493423,
        size.height * 0.8459295,
        size.width * 0.9493273,
        size.height * 0.8460570);
    path_9.cubicTo(
        size.width * 0.9493123,
        size.height * 0.8461846,
        size.width * 0.9492733,
        size.height * 0.8463054,
        size.width * 0.9492162,
        size.height * 0.8464161);
    path_9.cubicTo(
        size.width * 0.9491592,
        size.height * 0.8465268,
        size.width * 0.9490841,
        size.height * 0.8466242,
        size.width * 0.9489940,
        size.height * 0.8467013);
    path_9.cubicTo(
        size.width * 0.9489039,
        size.height * 0.8467785,
        size.width * 0.9487988,
        size.height * 0.8468356,
        size.width * 0.9486907,
        size.height * 0.8468691);
    path_9.cubicTo(
        size.width * 0.9485796,
        size.height * 0.8469027,
        size.width * 0.9484655,
        size.height * 0.8469094,
        size.width * 0.9483514,
        size.height * 0.8468926);
    path_9.cubicTo(
        size.width * 0.9482372,
        size.height * 0.8468758,
        size.width * 0.9481291,
        size.height * 0.8468356,
        size.width * 0.9480300,
        size.height * 0.8467718);
    path_9.lineTo(size.width * 0.9460931, size.height * 0.8455436);
    path_9.cubicTo(
        size.width * 0.9458949,
        size.height * 0.8454128,
        size.width * 0.9457538,
        size.height * 0.8451980,
        size.width * 0.9456937,
        size.height * 0.8449497);
    path_9.cubicTo(
        size.width * 0.9456366,
        size.height * 0.8447013,
        size.width * 0.9456697,
        size.height * 0.8444362,
        size.width * 0.9457868,
        size.height * 0.8442148);
    path_9.cubicTo(
        size.width * 0.9458438,
        size.height * 0.8441040,
        size.width * 0.9459189,
        size.height * 0.8440067,
        size.width * 0.9460090,
        size.height * 0.8439295);
    path_9.cubicTo(
        size.width * 0.9461021,
        size.height * 0.8438523,
        size.width * 0.9462042,
        size.height * 0.8437953,
        size.width * 0.9463153,
        size.height * 0.8437651);
    path_9.cubicTo(
        size.width * 0.9464264,
        size.height * 0.8437315,
        size.width * 0.9465405,
        size.height * 0.8437248,
        size.width * 0.9466547,
        size.height * 0.8437450);
    path_9.cubicTo(
        size.width * 0.9467688,
        size.height * 0.8437617,
        size.width * 0.9468769,
        size.height * 0.8438054,
        size.width * 0.9469730,
        size.height * 0.8438725);
    path_9.lineTo(size.width * 0.9488979, size.height * 0.8451007);
    path_9.lineTo(size.width * 0.9488979, size.height * 0.8450872);
    path_9.close();
    path_9.moveTo(size.width * 0.9444985, size.height * 0.8505436);
    path_9.cubicTo(
        size.width * 0.9445856,
        size.height * 0.8507651,
        size.width * 0.9445946,
        size.height * 0.8510168,
        size.width * 0.9445255,
        size.height * 0.8512450);
    path_9.cubicTo(
        size.width * 0.9444595,
        size.height * 0.8514765,
        size.width * 0.9443183,
        size.height * 0.8516678,
        size.width * 0.9441291,
        size.height * 0.8517886);
    path_9.cubicTo(
        size.width * 0.9439399,
        size.height * 0.8519094,
        size.width * 0.9437207,
        size.height * 0.8519463,
        size.width * 0.9435075,
        size.height * 0.8518960);
    path_9.cubicTo(
        size.width * 0.9432973,
        size.height * 0.8518456,
        size.width * 0.9431081,
        size.height * 0.8517114,
        size.width * 0.9429820,
        size.height * 0.8515168);
    path_9.lineTo(size.width * 0.9418829, size.height * 0.8493523);
    path_9.cubicTo(
        size.width * 0.9417958,
        size.height * 0.8491309,
        size.width * 0.9417868,
        size.height * 0.8488826,
        size.width * 0.9418559,
        size.height * 0.8486510);
    path_9.cubicTo(
        size.width * 0.9419219,
        size.height * 0.8484228,
        size.width * 0.9420631,
        size.height * 0.8482282,
        size.width * 0.9422523,
        size.height * 0.8481074);
    path_9.cubicTo(
        size.width * 0.9424414,
        size.height * 0.8479899,
        size.width * 0.9426607,
        size.height * 0.8479497,
        size.width * 0.9428739,
        size.height * 0.8480000);
    path_9.cubicTo(
        size.width * 0.9430841,
        size.height * 0.8480503,
        size.width * 0.9432733,
        size.height * 0.8481879,
        size.width * 0.9433994,
        size.height * 0.8483826);
    path_9.lineTo(size.width * 0.9444985, size.height * 0.8505436);
    path_9.close();
    path_9.moveTo(size.width * 0.9382432, size.height * 0.8528289);
    path_9.cubicTo(
        size.width * 0.9382553,
        size.height * 0.8529664,
        size.width * 0.9382432,
        size.height * 0.8531074,
        size.width * 0.9382072,
        size.height * 0.8532383);
    path_9.cubicTo(
        size.width * 0.9381682,
        size.height * 0.8533691,
        size.width * 0.9381051,
        size.height * 0.8534933,
        size.width * 0.9380240,
        size.height * 0.8535940);
    path_9.cubicTo(
        size.width * 0.9379399,
        size.height * 0.8536980,
        size.width * 0.9378408,
        size.height * 0.8537819,
        size.width * 0.9377267,
        size.height * 0.8538389);
    path_9.cubicTo(
        size.width * 0.9376126,
        size.height * 0.8538926,
        size.width * 0.9374925,
        size.height * 0.8539228,
        size.width * 0.9373664,
        size.height * 0.8539228);
    path_9.cubicTo(
        size.width * 0.9372432,
        size.height * 0.8539228,
        size.width * 0.9371201,
        size.height * 0.8538926,
        size.width * 0.9370090,
        size.height * 0.8538389);
    path_9.cubicTo(
        size.width * 0.9368949,
        size.height * 0.8537819,
        size.width * 0.9367928,
        size.height * 0.8536980,
        size.width * 0.9367117,
        size.height * 0.8535940);
    path_9.cubicTo(
        size.width * 0.9366306,
        size.height * 0.8534933,
        size.width * 0.9365676,
        size.height * 0.8533691,
        size.width * 0.9365285,
        size.height * 0.8532383);
    path_9.cubicTo(
        size.width * 0.9364925,
        size.height * 0.8531074,
        size.width * 0.9364805,
        size.height * 0.8529664,
        size.width * 0.9364925,
        size.height * 0.8528289);
    path_9.lineTo(size.width * 0.9364925, size.height * 0.8503725);
    path_9.cubicTo(
        size.width * 0.9364805,
        size.height * 0.8502349,
        size.width * 0.9364925,
        size.height * 0.8500973,
        size.width * 0.9365285,
        size.height * 0.8499631);
    path_9.cubicTo(
        size.width * 0.9365676,
        size.height * 0.8498322,
        size.width * 0.9366306,
        size.height * 0.8497114,
        size.width * 0.9367117,
        size.height * 0.8496074);
    path_9.cubicTo(
        size.width * 0.9367928,
        size.height * 0.8495034,
        size.width * 0.9368949,
        size.height * 0.8494228,
        size.width * 0.9370090,
        size.height * 0.8493658);
    path_9.cubicTo(
        size.width * 0.9371201,
        size.height * 0.8493087,
        size.width * 0.9372432,
        size.height * 0.8492785,
        size.width * 0.9373664,
        size.height * 0.8492785);
    path_9.cubicTo(
        size.width * 0.9374925,
        size.height * 0.8492785,
        size.width * 0.9376126,
        size.height * 0.8493087,
        size.width * 0.9377267,
        size.height * 0.8493658);
    path_9.cubicTo(
        size.width * 0.9378408,
        size.height * 0.8494228,
        size.width * 0.9379399,
        size.height * 0.8495034,
        size.width * 0.9380240,
        size.height * 0.8496074);
    path_9.cubicTo(
        size.width * 0.9381051,
        size.height * 0.8497114,
        size.width * 0.9381682,
        size.height * 0.8498322,
        size.width * 0.9382072,
        size.height * 0.8499631);
    path_9.cubicTo(
        size.width * 0.9382432,
        size.height * 0.8500973,
        size.width * 0.9382553,
        size.height * 0.8502349,
        size.width * 0.9382432,
        size.height * 0.8503725);
    path_9.lineTo(size.width * 0.9382432, size.height * 0.8528289);
    path_9.close();
    path_9.moveTo(size.width * 0.9317988, size.height * 0.8513188);
    path_9.cubicTo(
        size.width * 0.9316817,
        size.height * 0.8515436,
        size.width * 0.9314895,
        size.height * 0.8517047,
        size.width * 0.9312673,
        size.height * 0.8517718);
    path_9.cubicTo(
        size.width * 0.9310420,
        size.height * 0.8518356,
        size.width * 0.9308048,
        size.height * 0.8517987,
        size.width * 0.9306036,
        size.height * 0.8516678);
    path_9.cubicTo(
        size.width * 0.9304054,
        size.height * 0.8515403,
        size.width * 0.9302583,
        size.height * 0.8513255,
        size.width * 0.9302012,
        size.height * 0.8510738);
    path_9.cubicTo(
        size.width * 0.9301411,
        size.height * 0.8508255,
        size.width * 0.9301742,
        size.height * 0.8505604,
        size.width * 0.9302913,
        size.height * 0.8503356);
    path_9.lineTo(size.width * 0.9313904, size.height * 0.8481745);
    path_9.cubicTo(
        size.width * 0.9315075,
        size.height * 0.8479530,
        size.width * 0.9316967,
        size.height * 0.8477919,
        size.width * 0.9319189,
        size.height * 0.8477248);
    path_9.cubicTo(
        size.width * 0.9321411,
        size.height * 0.8476577,
        size.width * 0.9323784,
        size.height * 0.8476913,
        size.width * 0.9325796,
        size.height * 0.8478154);
    path_9.cubicTo(
        size.width * 0.9327778,
        size.height * 0.8479463,
        size.width * 0.9329189,
        size.height * 0.8481611,
        size.width * 0.9329790,
        size.height * 0.8484094);
    path_9.cubicTo(
        size.width * 0.9330360,
        size.height * 0.8486577,
        size.width * 0.9330030,
        size.height * 0.8489228,
        size.width * 0.9328859,
        size.height * 0.8491443);
    path_9.lineTo(size.width * 0.9317868, size.height * 0.8513188);
    path_9.lineTo(size.width * 0.9317988, size.height * 0.8513188);
    path_9.close();
    path_9.moveTo(size.width * 0.9269159, size.height * 0.8464027);
    path_9.cubicTo(
        size.width * 0.9267147,
        size.height * 0.8465101,
        size.width * 0.9264865,
        size.height * 0.8465302,
        size.width * 0.9262763,
        size.height * 0.8464564);
    path_9.cubicTo(
        size.width * 0.9260631,
        size.height * 0.8463826,
        size.width * 0.9258829,
        size.height * 0.8462248,
        size.width * 0.9257718,
        size.height * 0.8460101);
    path_9.cubicTo(
        size.width * 0.9256607,
        size.height * 0.8457953,
        size.width * 0.9256276,
        size.height * 0.8455436,
        size.width * 0.9256757,
        size.height * 0.8453020);
    path_9.cubicTo(
        size.width * 0.9257237,
        size.height * 0.8450604,
        size.width * 0.9258529,
        size.height * 0.8448490,
        size.width * 0.9260360,
        size.height * 0.8447081);
    path_9.lineTo(size.width * 0.9279580, size.height * 0.8434799);
    path_9.cubicTo(
        size.width * 0.9281622,
        size.height * 0.8433490,
        size.width * 0.9284024,
        size.height * 0.8433154,
        size.width * 0.9286276,
        size.height * 0.8433859);
    path_9.cubicTo(
        size.width * 0.9288529,
        size.height * 0.8434564,
        size.width * 0.9290420,
        size.height * 0.8436208,
        size.width * 0.9291592,
        size.height * 0.8438456);
    path_9.cubicTo(
        size.width * 0.9292162,
        size.height * 0.8439597,
        size.width * 0.9292523,
        size.height * 0.8440805,
        size.width * 0.9292643,
        size.height * 0.8442081);
    path_9.cubicTo(
        size.width * 0.9292793,
        size.height * 0.8443356,
        size.width * 0.9292703,
        size.height * 0.8444631,
        size.width * 0.9292402,
        size.height * 0.8445872);
    path_9.cubicTo(
        size.width * 0.9292102,
        size.height * 0.8447114,
        size.width * 0.9291562,
        size.height * 0.8448255,
        size.width * 0.9290871,
        size.height * 0.8449262);
    path_9.cubicTo(
        size.width * 0.9290150,
        size.height * 0.8450268,
        size.width * 0.9289279,
        size.height * 0.8451107,
        size.width * 0.9288288,
        size.height * 0.8451745);
    path_9.lineTo(size.width * 0.9269159, size.height * 0.8464027);
    path_9.close();
    path_9.moveTo(size.width * 0.9248679, size.height * 0.8394094);
    path_9.cubicTo(
        size.width * 0.9246366,
        size.height * 0.8394094,
        size.width * 0.9244114,
        size.height * 0.8393087,
        size.width * 0.9242462,
        size.height * 0.8391242);
    path_9.cubicTo(
        size.width * 0.9240811,
        size.height * 0.8389396,
        size.width * 0.9239880,
        size.height * 0.8386879,
        size.width * 0.9239880,
        size.height * 0.8384262);
    path_9.cubicTo(
        size.width * 0.9239880,
        size.height * 0.8381678,
        size.width * 0.9240811,
        size.height * 0.8379161,
        size.width * 0.9242462,
        size.height * 0.8377315);
    path_9.cubicTo(
        size.width * 0.9244114,
        size.height * 0.8375470,
        size.width * 0.9246366,
        size.height * 0.8374463,
        size.width * 0.9248679,
        size.height * 0.8374463);
    path_9.lineTo(size.width * 0.9270691, size.height * 0.8374463);
    path_9.cubicTo(
        size.width * 0.9273033,
        size.height * 0.8374463,
        size.width * 0.9275255,
        size.height * 0.8375470,
        size.width * 0.9276907,
        size.height * 0.8377315);
    path_9.cubicTo(
        size.width * 0.9278559,
        size.height * 0.8379161,
        size.width * 0.9279489,
        size.height * 0.8381678,
        size.width * 0.9279489,
        size.height * 0.8384262);
    path_9.cubicTo(
        size.width * 0.9279489,
        size.height * 0.8386879,
        size.width * 0.9278559,
        size.height * 0.8389396,
        size.width * 0.9276907,
        size.height * 0.8391242);
    path_9.cubicTo(
        size.width * 0.9275255,
        size.height * 0.8393087,
        size.width * 0.9273033,
        size.height * 0.8394094,
        size.width * 0.9270691,
        size.height * 0.8394094);
    path_9.lineTo(size.width * 0.9248679, size.height * 0.8394094);
    path_9.close();
    path_9.moveTo(size.width * 0.9262222, size.height * 0.8322215);
    path_9.cubicTo(
        size.width * 0.9260240,
        size.height * 0.8320906,
        size.width * 0.9258799,
        size.height * 0.8318792,
        size.width * 0.9258198,
        size.height * 0.8316309);
    path_9.cubicTo(
        size.width * 0.9257598,
        size.height * 0.8313826,
        size.width * 0.9257898,
        size.height * 0.8311174,
        size.width * 0.9259039,
        size.height * 0.8308960);
    path_9.cubicTo(
        size.width * 0.9260150,
        size.height * 0.8306745,
        size.width * 0.9261982,
        size.height * 0.8305101,
        size.width * 0.9264174,
        size.height * 0.8304396);
    path_9.cubicTo(
        size.width * 0.9266336,
        size.height * 0.8303691,
        size.width * 0.9268679,
        size.height * 0.8303960,
        size.width * 0.9270691,
        size.height * 0.8305134);
    path_9.lineTo(size.width * 0.9289940, size.height * 0.8317416);
    path_9.cubicTo(
        size.width * 0.9290931,
        size.height * 0.8318054,
        size.width * 0.9291802,
        size.height * 0.8318926,
        size.width * 0.9292492,
        size.height * 0.8319933);
    path_9.cubicTo(
        size.width * 0.9293183,
        size.height * 0.8320940,
        size.width * 0.9293694,
        size.height * 0.8322081,
        size.width * 0.9293994,
        size.height * 0.8323322);
    path_9.cubicTo(
        size.width * 0.9294294,
        size.height * 0.8324564,
        size.width * 0.9294354,
        size.height * 0.8325839,
        size.width * 0.9294204,
        size.height * 0.8327114);
    path_9.cubicTo(
        size.width * 0.9294054,
        size.height * 0.8328356,
        size.width * 0.9293694,
        size.height * 0.8329597,
        size.width * 0.9293123,
        size.height * 0.8330705);
    path_9.cubicTo(
        size.width * 0.9291952,
        size.height * 0.8332919,
        size.width * 0.9290060,
        size.height * 0.8334530,
        size.width * 0.9287808,
        size.height * 0.8335168);
    path_9.cubicTo(
        size.width * 0.9285586,
        size.height * 0.8335805,
        size.width * 0.9283243,
        size.height * 0.8335436,
        size.width * 0.9281231,
        size.height * 0.8334128);
    path_9.lineTo(size.width * 0.9262012, size.height * 0.8321846);
    path_9.lineTo(size.width * 0.9262222, size.height * 0.8322215);
    path_9.close();
    path_9.moveTo(size.width * 0.8330420, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8540360, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.8485375, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.8390901, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.8330420, size.height * 0.9151846);
    path_9.close();
    path_9.moveTo(size.width * 0.8401021, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.8320420, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.8329970, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.8373964, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.8400691, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.8401021, size.height * 0.8855570);
    path_9.close();
    path_9.moveTo(size.width * 0.9264414, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.9203934, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.9109129, size.height * 0.9001812);
    path_9.lineTo(size.width * 0.9054144, size.height * 0.9151846);
    path_9.lineTo(size.width * 0.9264414, size.height * 0.9151846);
    path_9.close();
    path_9.moveTo(size.width * 0.9220420, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.9264414, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.9273994, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.9193694, size.height * 0.8855570);
    path_9.lineTo(size.width * 0.9220330, size.height * 0.8921812);
    path_9.lineTo(size.width * 0.9220420, size.height * 0.8921812);
    path_9.close();
    path_9.moveTo(size.width * 0.9026757, size.height * 0.8269128);
    path_9.cubicTo(
        size.width * 0.8999850,
        size.height * 0.8239866,
        size.width * 0.8968649,
        size.height * 0.8216007,
        size.width * 0.8934505,
        size.height * 0.8198591);
    path_9.cubicTo(
        size.width * 0.8948318,
        size.height * 0.8221275,
        size.width * 0.8959610,
        size.height * 0.8245738,
        size.width * 0.8968138,
        size.height * 0.8271477);
    path_9.cubicTo(
        size.width * 0.8990631,
        size.height * 0.8344128,
        size.width * 0.9001772,
        size.height * 0.8420570,
        size.width * 0.9001141,
        size.height * 0.8497450);
    path_9.lineTo(size.width * 0.9122102, size.height * 0.8497450);
    path_9.cubicTo(
        size.width * 0.9116997,
        size.height * 0.8410940,
        size.width * 0.9083393,
        size.height * 0.8329597,
        size.width * 0.9027748,
        size.height * 0.8269128);
    path_9.lineTo(size.width * 0.9026757, size.height * 0.8269128);
    path_9.close();
    path_9.moveTo(size.width * 0.8854775, size.height * 0.8170805);
    path_9.cubicTo(
        size.width * 0.8842492,
        size.height * 0.8168490,
        size.width * 0.8830120,
        size.height * 0.8166846,
        size.width * 0.8817718,
        size.height * 0.8165906);
    path_9.lineTo(size.width * 0.8817718, size.height * 0.8497718);
    path_9.lineTo(size.width * 0.8961652, size.height * 0.8497718);
    path_9.cubicTo(
        size.width * 0.8962523,
        size.height * 0.8426107,
        size.width * 0.8952312,
        size.height * 0.8354899,
        size.width * 0.8931532,
        size.height * 0.8287181);
    path_9.cubicTo(
        size.width * 0.8914264,
        size.height * 0.8235470,
        size.width * 0.8888859,
        size.height * 0.8195403,
        size.width * 0.8854535,
        size.height * 0.8171174);
    path_9.lineTo(size.width * 0.8854775, size.height * 0.8170805);
    path_9.close();
    path_9.moveTo(size.width * 0.8778559, size.height * 0.8165772);
    path_9.cubicTo(
        size.width * 0.8766336,
        size.height * 0.8166644,
        size.width * 0.8754024,
        size.height * 0.8168121,
        size.width * 0.8742162,
        size.height * 0.8170201);
    path_9.cubicTo(
        size.width * 0.8707628,
        size.height * 0.8194799,
        size.width * 0.8682102,
        size.height * 0.8235101,
        size.width * 0.8665165,
        size.height * 0.8287315);
    path_9.cubicTo(
        size.width * 0.8644685,
        size.height * 0.8354866,
        size.width * 0.8634565,
        size.height * 0.8425772,
        size.width * 0.8635255,
        size.height * 0.8497081);
    path_9.lineTo(size.width * 0.8778769, size.height * 0.8497081);
    path_9.lineTo(size.width * 0.8778769, size.height * 0.8165302);
    path_9.lineTo(size.width * 0.8778559, size.height * 0.8165772);
    path_9.close();
    path_9.moveTo(size.width * 0.8662763, size.height * 0.8197617);
    path_9.cubicTo(
        size.width * 0.8627808,
        size.height * 0.8215134,
        size.width * 0.8595886,
        size.height * 0.8239430,
        size.width * 0.8568498,
        size.height * 0.8269362);
    path_9.cubicTo(
        size.width * 0.8512853,
        size.height * 0.8329732,
        size.width * 0.8479159,
        size.height * 0.8411007,
        size.width * 0.8473934,
        size.height * 0.8497450);
    path_9.lineTo(size.width * 0.8595796, size.height * 0.8497450);
    path_9.cubicTo(
        size.width * 0.8595105,
        size.height * 0.8420906,
        size.width * 0.8606036,
        size.height * 0.8344799,
        size.width * 0.8628108,
        size.height * 0.8272315);
    path_9.cubicTo(
        size.width * 0.8636697,
        size.height * 0.8245839,
        size.width * 0.8648348,
        size.height * 0.8220705,
        size.width * 0.8662763,
        size.height * 0.8197617);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xffAE9F8C).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
