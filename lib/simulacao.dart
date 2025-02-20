import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:knob_widget/knob_widget.dart';
import 'package:align_positioned/align_positioned.dart';
// ainda é necessário adicionar permissão para vídeos no android 

class Simulacao extends StatefulWidget {
  const Simulacao({
    super.key,
    required this.title,
  });

  final String title;

  @override
  _SimulacaoState createState() => _SimulacaoState();
}

class _SimulacaoState extends State<Simulacao>  {

  final double _minimum = 0;
  final double _maximum = 360;

  late KnobController _controller;
  late KnobController _controller2;
  late double _knobValue;
  late double _knobValue2;
  late double tempValue;
  late double tempValue2;


  void valueChangedListener(double value) {
    if (mounted) {
      setState(() {
        if ((tempValue > 180) && (value < (tempValue - 180))){
          _knobValue = _knobValue + 360 - tempValue + value;
        }

        else if ((value > 180) && ( tempValue < (value - 180))){
          _knobValue = _knobValue - 360 - tempValue + value;
        }

        else {_knobValue = _knobValue - tempValue + value;}

        tempValue = value;
      });
    }
  }
  void valueChangedListener2(double value2) {
    if (mounted) {
      setState(() {
        if ((tempValue2 > 180) && (value2 < (tempValue2 - 180))){
          _knobValue2 = _knobValue2 + 360 - tempValue2 + value2;
        }

        else if ((value2 > 180) && ( tempValue2 < (value2 - 180))){
          _knobValue2 = _knobValue2 - 360 - tempValue2 + value2;
        }

        else {_knobValue2 = _knobValue2 - tempValue2 + value2;}

        tempValue2 = value2;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    tempValue = _minimum;
    _knobValue = _minimum;
    _controller = KnobController(
      initial: _knobValue,
      minimum: _minimum,
      maximum: _maximum,
      startAngle: 0,
      endAngle: 360,
    );
    _controller.addOnValueChangedListener(valueChangedListener);

    tempValue2 = _minimum;
    _knobValue2 = _minimum;
    _controller2 = KnobController(
      initial: _knobValue,
      minimum: _minimum,
      maximum: _maximum,
      startAngle: 0,
      endAngle: 360,
    );
    _controller2.addOnValueChangedListener(valueChangedListener2);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double proporcao(){
      double prop = 0;
      if (size.height / size.width > 1.8) {
        prop = 2/3;
      }
      else if (size.height > size.width){
        prop = 4/5;
      }
      else {
        prop = 1;
      }
      return prop;
    }

    return Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(size.width*0.06, 0, size.width*0.06, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              //Text(_knobValue.toString()),
              //Text(_knobValue2.toString()),
              Container(
                constraints: BoxConstraints(maxHeight:size.height*0.65, maxWidth: 700),
                child: AspectRatio(
                  aspectRatio: proporcao(),
                  child: Column(
                    children: [
                        Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                        constraints: const BoxConstraints(maxWidth: 700),
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
                              spreadRadius: -8,
                              blurRadius: 20,
                            ),
                          ]
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Recriação',  
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFCD8621))),
                            SizedBox(
                              height: 7,
                              child: Container(
                                margin: const EdgeInsets.all(2.4),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(0, 158, 158, 158),
                                    Color.fromARGB(255, 196, 187, 166),
                                    Color.fromARGB(0, 158, 158, 158),
                                  ])
                                ),
                              ),
                            ),
                            const Text(
                              'Pequena Máquina de Associações Poéticas',
                              textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) => Container(
                            constraints: const BoxConstraints(maxHeight: 100),
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
                                  color: Color(0xFFC9C6C0),
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFBF4),
                                  spreadRadius: -8,
                                  blurRadius: 20,
                                ),
                              ]
                            ),
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                            child: Stack(children: [ 
                              AlignPositioned(
                                dy: -constraints.biggest.width*2,
                                child: AnimatedAlignPositioned(
                                  duration: const Duration(milliseconds: 500),
                                  alignment: Alignment.center,
                                  childWidth: constraints.biggest.width*5,
                                  childHeight: constraints.biggest.width*5,
                                  touch: Touch.inside,
                                  rotateDegrees: _knobValue/4,
                                  curve: Curves.easeOut,
                                  child: SvgPicture.asset('assets/img/disco_1.svg',
                                        semanticsLabel: 'Disco1',),
                                ),
                              ),
                              AlignPositioned(
                                dy: -constraints.biggest.width*2,
                                child: AnimatedAlignPositioned(
                                  alignment: Alignment.center,
                                  childWidth: constraints.biggest.width*5,
                                  childHeight: constraints.biggest.width*5,
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
                    ],
                  ),
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, size.width*0.04, 0),
                    child: Knob(
                      controller: _controller,
                      width: size.height*0.13,
                      height: size.height*0.13,
                      style: const KnobStyle(
                        majorTickStyle: MajorTickStyle(length: 6, thickness: 2, color: Color(0xFF5D594D), highlightColor: Color(0xFF5D594D)),
                        minorTickStyle: MinorTickStyle(length: 6, thickness: 2, color: Color(0xFF5D594D), highlightColor: Color(0xFF5D594D)),
                        controlStyle: ControlStyle(
                          backgroundColor: Color(0xFFF5F5F5),
                          glowColor: Colors.grey,
                          shadowColor: Colors.grey,
                          tickStyle: ControlTickStyle(
                            count: 0,
                          )
                        ),
                        pointerStyle: PointerStyle(
                          color: Color(0xFF5D594D),
                        ),
                        tickOffset: 5,
                        minorTicksPerInterval: 20,
                        labelStyle: TextStyle(color: Color.fromARGB(0, 0, 0, 0))
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.fromLTRB(size.width*0.04, 0, 0, 0),
                    child: Knob(
                      controller: _controller2,
                      width: size.height*0.13,
                      height: size.height*0.13,
                      style: const KnobStyle(
                        majorTickStyle: MajorTickStyle(length: 6, thickness: 2, color: Color(0xFF5D594D), highlightColor: Color(0xFF5D594D)),
                        minorTickStyle: MinorTickStyle(length: 6, thickness: 2, color: Color(0xFF5D594D), highlightColor: Color(0xFF5D594D)),
                        controlStyle: ControlStyle(
                          backgroundColor: Color(0xFFF5F5F5),
                          glowColor: Colors.grey,
                          shadowColor: Colors.grey,
                          tickStyle: ControlTickStyle(
                            count: 0,
                          )
                        ),
                        pointerStyle: PointerStyle(
                          color: Color(0xFF5D594D),
                        ),
                        tickOffset: 5,
                        minorTicksPerInterval: 20,
                        labelStyle: TextStyle(color: Color.fromARGB(0, 0, 0, 0))
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      );
  }

  @override
  void dispose() {
    _controller.removeOnValueChangedListener(valueChangedListener);
    super.dispose();
  }
}