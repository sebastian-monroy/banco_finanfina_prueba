import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';



class IntoScreen extends StatefulWidget {
   IntoScreen({super.key});

  @override
  State<IntoScreen> createState() => _IntoScreenState();
}

class _IntoScreenState extends State<IntoScreen> {
  final List <Color>colors= [
    const Color(0xFFab3175),
    const Color(0xFFab3175),
    const Color(0xFFff7e51),
    const Color(0xFF6e07e0),
    const Color(0xFFef2b64),
    const Color(0xFF6e07e0)
  ];

  int currentIndex = 0; //variable para los dots

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          IntroductionScreen(
            controlsPadding: EdgeInsets.zero,
            //diseño de la paginacion en donde esta los botones
            dotsContainerDecorator: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50.0),
            ),
            globalBackgroundColor: colors[currentIndex],
            scrollPhysics: const BouncingScrollPhysics(),
            pages: [
          
              //pantalla 1
              PageViewModel(
                decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFE63946), Color(0xFF9B2F83)]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                      //aca va el logotipo del banco finandina
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco.png',
                        )
                      ),
                      const SizedBox(height: 35,),
                      Text(
                        'Con Banco Finandina',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                      Text(
                        'tienes el poder de ser libre',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(height: size.height * 0.3,),
                      Text(
                        'Descubre lo que puedes hacer con tu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: size.width * 0.045,
                       ),
                      ),
                      
                      Text(
                        'App Banco Finandina',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink(),
              ),
          
              //pantalla 2
              PageViewModel(
                  decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFE63946), Color(0xFF9B2F83)]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco_peque.png',
                        )
                      ),
                      SizedBox(height: size.height * 0.05,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_pantalla2med.png'
                        )
                      ),
                      SizedBox(height: size.height * 0.03,),
          
                      Text(
                        'Tus productos a la mano',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
          
                      SizedBox(height: size.height * 0.02,),
          
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Adminístralos libremente desde cualquier lugar, fácil y rápido.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: size.width * 0.045
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink(),
              ),
          
              //pantalla 3
              PageViewModel(
                decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFF6B6B), Color(0xFFFF8C42)]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.1,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco_peque.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.05,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_pantalla3.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.03,),
          
                      Text(
                        'Paga libremente',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
          
                      SizedBox(height: size.height * 0.02,),
          
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Puedes pagar tus productos, recibos y facturas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: size.width * 0.045,
                          ),
                        ),
                      ),
                      Text(
                        'en cualquier momento y lugar.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: size.width * 0.045,
                        ),
                      )
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink()
              ),
          
              //cuarta pantalla
              PageViewModel(
                decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                  pageColor: Color(0xFF6200EA),
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF9C27B0),
                        Color(0xFF6200EA)
                      ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco_peque.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.05,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_pantalla4.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.02,),
          
                      Text(
                        'Envia dinero',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
          
                      Text(
                        'Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: size.width * 0.045
                        ),
                      ),
                      
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink()
              ),
          
              PageViewModel(
                decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                  pageColor: Color(0xFFE91E63),
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height, 
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFF6B6B), Color(0xFFE91E63)]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco_peque.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.05,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_pantalla5.png',
                        )
                      ),
          
                      Text(
                        'Tu banco donde quieras',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
          
                      SizedBox(height: size.height * 0.01),
          
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'La oficina más cercana es tu celular. Libérate de las filas y los trámites largos.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: size.width * 0.045
                          ),
                        ),
                      ),
          
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink()
              ),
          
              //ultima pantalla
              PageViewModel(
                decoration: const PageDecoration(
                  contentMargin: EdgeInsets.zero,
                  fullScreen: false,
                  pageColor: Color(0xFF6200EA),
                ),
                titleWidget: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF9C27B0),
                        Color(0xFF6200EA)
                      ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_blanco_peque.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.05,),
          
                      const Image(
                        image: AssetImage(
                          'assets/logo_pantalla6.png',
                        )
                      ),
          
                      SizedBox(height: size.height * 0.05,),
          
                      Text(
                        '¡Escanea y listo!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold
                        ),
                      ),
          
                      Text(
                        'Paga en datafonos con QR y liberate de las tarjetas fisicas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: size.width * 0.045
                        ),
                      ),
                      
                    ],
                  ),
                ),
                bodyWidget: const SizedBox.shrink()
              ),
            ],
            onDone: (){
              Navigator.pushNamed(context, "second");
            },
            onSkip: (){
              Navigator.pushNamed(context, "second");
            },
            showSkipButton: true,
            showDoneButton: true,
            showNextButton: true,
            
            skip: const Text(
              "Saltar", style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
            dotsFlex: currentIndex != 5 ? 3 : 1,
            next: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
              ),
              child: Icon(
                size: 30,
                Icons.arrow_forward, 
                color: colors[currentIndex], //la flecha cambia al color que corresponda cada pantalla
              ),
            ),
            onChange: (value) {
              setState((){
                currentIndex = value;
              });
            },
            done: const Text(
              "libera tu banca",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),
            ),
          
            //margen de los controladores de cuando se da siguiente
            controlsMargin: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            
            //estilos de los dots
            dotsDecorator: DotsDecorator(
              size: const Size.square(8.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.white.withOpacity(0.5),
              activeColor: Colors.white,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.9)
              ),
            ),
          ),
        ],
      ),
    );
  }
}