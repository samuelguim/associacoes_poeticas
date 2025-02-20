import 'package:flutter/material.dart';

class Historia extends StatefulWidget {
  const Historia({
    super.key,
    required this.title,
  });

  final String title;

  @override
  _HistoriaState createState() => _HistoriaState();
}

class _HistoriaState extends State<Historia>  {

  // final ScrollController _scrollController = ScrollController();
  // int _currentScrollIndex = 0;
  // final _containerHeight = 700.0;

  // final List <Widget> _indiceTitulos = [
  //   RichText(text: const TextSpan(text: 'Artista')),
  //   RichText(text: const TextSpan(text: 'Obra')),
  //   RichText(text: const TextSpan(text: 'Recriação')),
  // ];  

  final List <Widget> _conteudos = [
    RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(text: '\nO Artista',
                   style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n\nLenio Braga nasceu em Ribeirão Claro, norte do Paraná, em 5 de junho de 1931. ', 
                   style: TextStyle()),
          TextSpan(text: '\n\nDesde cedo manifestou inclinação para as artes plásticas, demonstrando grande habilidade e uma curiosidade inesgotável, que o acompanhou por toda a vida. Experimentou praticamente todas as formas de expressão plástica: desenho, pintura, gravura, escultura, muralismo, cerâmica, artes gráficas e fotografia. ', 
                   style: TextStyle()),
          TextSpan(text: '\n\nResidindo em São Paulo desde os nove anos, Lenio acompanhou de perto o debate estético e ideológico que envolveu os artistas da década de 40.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nTeve aulas de gravura com Lívio Abramo e Helen Kerr, mas foi autodidata em outras técnicas. Estudou História da Arte e debruçou-se sobre os clássicos, estudando composição, volume e técnicas de claro-escuro. Apaixonou-se pelos impressionistas, optando definitivamente pelo figurativismo como forma de expressão. Pesquisou atentamente o Modernismo brasileiro, preparando o terreno para sua ativa participação nos anos 60.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nNa década de 1950, mudou-se para Salvador, BA, onde participou de todo o movimento alimentado pela criação dos cursos de artes da UFBA. Ao lado de artistas como Mário Cravo, Carybé, Genaro de Carvalho, Jenner Augusto, Agnaldo dos Santos, Carlos Bastos, José de Dome, Hansen Bahia, Rubem Valentim, Mirabeau Sampaio, Raimundo de Oliveira, Ubirajara e outros, participou de diversas exposições culminando com prêmio de pintura obtido na I Bienal da Bahia (1966).', 
                   style: TextStyle()),
          TextSpan(text: '\n\nNo final da década de 1960, mudou-se para o Rio de Janeiro, vindo a falecer em fevereiro de 1973.', 
                   style: TextStyle()),
        ],
        style: TextStyle(color: Colors.black)),
      ),

      RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(text: '\nA Obra',
                   style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n\nA obra “Pequena Máquina de Associações Poéticas” (1967) possuía o formato de um aparelho televisor com dois botões giratórios frontais que permitiam a movimentação de dois discos de vidro com pequenos desenhos que se sobrepunham. Com a luz de uma lâmpada, a sobreposição era projetada na tela do “televisor” criando as chamadas associações poéticas.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nEntre os desenhos dos discos haviam muitas imagens características das obras de Lenio, algumas delas dialogando com o período de ditadura vigente na década de 1960. Por exemplo, através da manipulação dos discos era possível combinar uma grade de cela com um policial ou a bandeira do Brasil com uma arma.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nLenio já havia explorado a criação de obras interativas na I Bienal Nacional de Artes Plásticas (Salvador, 1966) onde apresentou a obra “Pede-se Tocar” que constava da parte interna de um piano onde havia um trabalho de colagem e uma placa com o título da obra.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nA “Pequena Máquina de Associações Poéticas” foi criada para a 9ª Bienal de São Paulo (1967) e esteve exposta ao lado de outras duas obras: “A Curra” e “Nós, Artistas”. Com o passar do tempo, a obra foi se deteriorando e hoje restam apenas os discos de vidro de onde foram retiradas e recuperadas as imagens para este projeto.  ', 
                   style: TextStyle()),
          TextSpan(text: '\n\nCuriosamente, é possível ver a obra sendo manipulada em um trecho de um filme rodado na época da Bienal intitulado “Um homem e sua jaula” de Fernando Coni Campos e Paulo Gil Soares. ', 
                   style: TextStyle()),
        ],
        style: TextStyle(color: Colors.black)),
      ),

      RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(text: '\nA recriação',
                   style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n\nInicialmente, os discos originais da obra foram escaneados utilizando um digitalizador de negativos. Esse processo permitiu a criação de imagens em alta definição contendo todos os desenhos presentes nos discos da obra.', 
                   style: TextStyle()),
          TextSpan(text: '\n\nPara viabilizar a construção de um software capaz de simular o funcionamento da obra, foi realizado um processo de vetorização das imagens obtidas com o digitalizador de negativos. Dessa forma, as imagens podem ser manipuladas com um menor consumo de desempenho computacional, aumentando a eficiência do software.', 
                   style: TextStyle()),
          TextSpan(text: '\n\n	Como parte das figuras apresentavam danos causados pelo tempo, um restauro foi realizado utilizando técnicas de pintura digital. O estudo bibliográfico da produção artística de Lênio Braga foi fundamental para que a identidade da obra fosse mantida durante esse processo.', 
                   style: TextStyle()),
          TextSpan(text: '\n\n\n', 
                   style: TextStyle()),
        ],
        style: TextStyle(color: Colors.black)),
      ),
  ];

  @override
  void initState() {
    super.initState();
    
  //  _scrollController.addListener(_updateScrollIndicator);

  }

  // void _updateScrollIndicator(){
  //   setState(() {
  //     _currentScrollIndex = _scrollController.offset ~/ _containerHeight;
  //   });
  // }

  // void _onTap(int index){
  //   _scrollController.animateTo(index * _containerHeight, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  //   setState(() {
  //     _currentScrollIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(size.width*0.06, 0, size.width*0.06, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      'História',  
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
              // Container(
              //   alignment: Alignment.center,
              //   height: 50,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: _indiceTitulos.length,
              //     itemBuilder: (context, index){
              //       return InkWell(
              //         onTap: (){
              //           _onTap(index);
              //         },
              //         child: Container(
              //           width: 100,
              //           height: 50,
              //           alignment: Alignment.center,
              //           decoration: index == _currentScrollIndex ? 
              //           const BoxDecoration(
              //             color: Colors.orange,
              //           )
              //           : null,
              //           child: _indiceTitulos[index],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Container(
                constraints: BoxConstraints(maxHeight:size.height*0.6),
                child: Column(
                  children: [
                    Expanded(child: SizedBox(
                      width: 700,
                      child: Stack(
                        children: [
                          ListView.builder(
                            //controller: _scrollController,
                            itemCount: _conteudos.length,
                            itemBuilder: (context, index){
                              return _conteudos[index];
                            },
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 226, 222, 220),
                                    Color.fromARGB(255, 226, 222, 220),
                                    Color.fromARGB(128, 226, 222, 220),
                                    Color.fromARGB(0, 226, 222, 220),
                                  ])
                              ),
                              height: 20,),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(255, 226, 222, 220),
                                    Color.fromARGB(255, 226, 222, 220),
                                    Color.fromARGB(128, 226, 222, 220),
                                    Color.fromARGB(0, 226, 222, 220),
                                  ])
                              ),
                              height: 50,),
                          ),
                          
                        ],
                      ),
                    ),)
                  ],
                )
              ),
            ]
          ),
        ),
      );
  }

  @override
  void dispose() {
    super.dispose();
  }
}