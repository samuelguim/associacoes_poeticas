import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:align_positioned/align_positioned.dart';


class Maquina extends StatefulWidget {
  const Maquina({
    super.key,
    required this.title,
  });

  final String title;

  @override
  _MaquinaState createState() => _MaquinaState();
}

class _MaquinaState extends State<Maquina>  {

  final double _minimum = 0;

  late double _knobValue;
  late double _knobValue2;
  late double tempValue;
  late double tempValue2;


  void valueChangedListener(double value) {
    if (mounted) {
      setState(() {
        /*if ((tempValue > 180) && (value < (tempValue - 180))){
          _knobValue = _knobValue + 360 - tempValue + value;
        }*/
      });
    }
  }

  void valueChangedListener2(double value2) {
    if (mounted) {
      setState(() {
        /*if ((tempValue2 > 180) && (value2 < (tempValue2 - 180))){
          _knobValue2 = _knobValue2 + 360 - tempValue2 + value2;
        }*/
      });
    }
  }

  @override
  void initState() {
    super.initState();
    tempValue = _minimum;
    _knobValue = _minimum;

    tempValue2 = _minimum;
    _knobValue2 = _minimum;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),*/
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth:size.height/1.2),
          margin: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              //Text(_knobValue.toString()),
              //Text(_knobValue2.toString()),

              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                constraints: const BoxConstraints(maxWidth: 400),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 0,
                      blurRadius: 0.8,
                      offset: Offset(0.5, 1.5)
                    ),
                    BoxShadow(
                      color: Color(0xFFC7C3BE),
                    ),
                    BoxShadow(
                      color: Color(0xFFFFFBF4),
                      spreadRadius: -3,
                      blurRadius: 20,
                    ),
                  ]
                ),
                child: const Column(
                  children: [
                    Text(
                      'Máquina',  
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFCD8621))),
                    Divider(color: Colors.grey),
                    Text(
                      'Pequena Máquina de Associações Poéticas',
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),

              Container(
                constraints: BoxConstraints(maxHeight:size.height*0.8),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 0,
                            blurRadius: 0.8,
                            offset: Offset(0.5, 1.5)
                          ),
                          BoxShadow(
                            color: Color(0xFFC7C3BE),
                          ),
                          BoxShadow(
                            color: Color(0xFFFFFBF4),
                            spreadRadius: -3,
                            blurRadius: 20,
                          ),
                        ]
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: Stack(children: [ 
                        AlignPositioned(
                          dy: -constraints.biggest.width*1.75,
                          child: AnimatedAlignPositioned(
                            duration: const Duration(milliseconds: 500),
                            alignment: Alignment.center,
                            childWidth: constraints.biggest.width*4,
                            childHeight: constraints.biggest.width*4,
                            touch: Touch.inside,
                            rotateDegrees: _knobValue/4,
                            curve: Curves.easeOut,
                            child: SvgPicture.asset('assets/img/disco_1.svg',
                                  semanticsLabel: 'Disco1',),
                          ),
                        ),
                        AlignPositioned(
                          dy: -constraints.biggest.width*1.75,
                          child: AnimatedAlignPositioned(
                            alignment: Alignment.center,
                            childWidth: constraints.biggest.width*4,
                            childHeight: constraints.biggest.width*4,
                            touch: Touch.inside,
                            rotateDegrees: _knobValue2/4,
                            curve: Curves.easeOut,
                            child: SvgPicture.asset('assets/img/disco_2.svg',
                                  semanticsLabel: 'Disco2',),
                          ),
                        ),
                      ],),
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    //_controller.removeOnValueChangedListener(valueChangedListener);
    super.dispose();
  }
}