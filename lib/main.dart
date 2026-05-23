import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disney+ Perú | Películas, series y deportes sin límites',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF040714),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00D2F3),
          secondary: Color(0xFF00D2F3),
          surface: Color(0xFF1A1C29),
        ),
        textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme)
            .copyWith(
              displayMedium: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.2,
              ),
              bodyLarge: const TextStyle(
                fontSize: 16,
                color: Color(0xFFA6A9B2),
              ),
            ),
      ),
      home: const DisneyLandingPage(),
    );
  }
}

class DisneyLandingPage extends StatefulWidget {
  const DisneyLandingPage({super.key});

  @override
  State<DisneyLandingPage> createState() => _DisneyLandingPageState();
}

class _DisneyLandingPageState extends State<DisneyLandingPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _selectedPlan = 'premium';
  final List<Map<String, String>> _faqs = [
    {
      'question': '¿Qué es Disney+?',
      'answer':
          'Disney+ es el servicio de streaming que reúne por primera vez en un solo lugar tus películas, series y cortos favoritos de Disney, Pixar, Marvel, Star Wars, National Geographic, ESPN y Hulu. Ofrece una amplia variedad de entretenimiento, incluyendo deportes en vivo, documentales y producciones originales exclusivas.',
    },
    {
      'question': '¿Qué contenido puedo ver en Disney+?',
      'answer':
          'En Disney+ encontrarás miles de títulos para todos los gustos: desde clásicos de animación de Disney y Pixar, películas de Marvel y Star Wars, hasta increíbles documentales de National Geographic, series galawardadas de Hulu y la cobertura deportiva más completa en vivo a través de los canales de ESPN.',
    },
    {
      'question': '¿Cuánto cuesta Disney+?',
      'answer':
          'Disney+ ofrece dos opciones de suscripción en Perú:\n\n• Disney+ Estándar: PEN 49,90 al mes o PEN 418,90 al año (Ahorra un 30%). Incluye el catálogo completo, canales de ESPN (con anuncios), video hasta 1080p Full HD y 2 dispositivos simultáneos.\n\n• Disney+ Premium: PEN 68,90 al mes o PEN 577,90 al año (Ahorra un 30%). Incluye catálogo completo, canales de ESPN y eventos exclusivos, video hasta 4K UHD con HDR, sonido Dolby Atmos y 4 dispositivos simultáneos.',
    },
    {
      'question': '¿Qué dispositivos son compatibles con Disney+?',
      'answer':
          'Puedes disfrutar de Disney+ en una amplia variedad de dispositivos compatibles:\n• Smart TVs: Samsung, LG, Android TV, Hisense, Apple TV, Chromecast, Roku, Fire TV.\n• Computadoras: Vía navegador web (Chrome, Edge, Safari, Firefox) y app de Windows.\n• Móviles y tabletas: iOS (iPhone y iPad) y Android.',
    },
    {
      'question': '¿Hay algún compromiso al suscribirme?',
      'answer':
          'No. No hay contratos de permanencia ni cargos por cancelación. Puedes cancelar tu suscripción en cualquier momento de forma rápida y sencilla a través de la configuración de tu cuenta. Tu acceso continuará hasta el final del periodo de facturación actual.',
    },
    {
      'question': '¿Puedo descargar contenido para verlo sin conexión?',
      'answer':
          'Sí. Ambos planes (Estándar y Premium) te permiten descargar películas, series y documentales en dispositivos móviles compatibles (iOS y Android) para que puedas verlos en cualquier momento y lugar, sin necesidad de estar conectado a internet.',
    },
  ];

  final List<Map<String, String>> _top10Movies = [
    {
      'title': 'The Punisher',
      'meta': '18+ • 2026 • Acción • Marvel',
      'poster':
          'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'The Mandalorian & Grogu',
      'meta': '14+ • 2026 • Sci-Fi • Star Wars',
      'poster':
          'https://images.unsplash.com/photo-1579546929518-9e396f3cc809?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Shōgun',
      'meta': '18+ • 2024 • Drama • FX',
      'poster':
          'https://images.unsplash.com/photo-1533105079780-92b9be482077?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Inside Out 2',
      'meta': 'Apt • 2024 • Animación • Pixar',
      'poster':
          'https://images.unsplash.com/photo-1513151233558-d860c5398176?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Deadpool & Wolverine',
      'meta': '18+ • 2024 • Acción • Marvel',
      'poster':
          'https://images.unsplash.com/photo-1608889175123-8ec330b86f84?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Avatar: The Way of Water',
      'meta': '14+ • 2022 • Aventura • Sci-Fi',
      'poster':
          'https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Grey\'s Anatomy',
      'meta': '14+ • 2005 • Drama • Médico',
      'poster':
          'https://images.unsplash.com/photo-1584515979956-d9f6e5d09982?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Moana 2',
      'meta': 'Apt • 2024 • Animación • Disney',
      'poster':
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Taylor Swift | The Eras Tour',
      'meta': 'Apt • 2023 • Concierto • Música',
      'poster':
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=400&auto=format&fit=crop',
    },
    {
      'title': 'Percy Jackson & the Olympians',
      'meta': '14+ • 2023 • Fantasía • Aventura',
      'poster':
          'https://images.unsplash.com/photo-1518709268805-4e9042af9f23?q=80&w=400&auto=format&fit=crop',
    },
  ];

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submitEmail() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xFF1A1C29),
          title: Row(
            children: [
              const Icon(Icons.check_circle, color: Color(0xFF00D2F3)),
              const SizedBox(width: 10),
              Text(
                '¡Correo Registrado!',
                style: GoogleFonts.lora(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Text(
            'Hemos registrado tu correo: ${_emailController.text}.\n\nPlan seleccionado: ${_selectedPlan.toUpperCase()}\n\nSerás redirigido para completar tu suscripción.',
            style: const TextStyle(color: Color(0xFFA6A9B2)),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _emailController.clear();
              },
              child: Text(
                'Aceptar',
                style: GoogleFonts.bebasNeue(
                  color: const Color(0xFF00D2F3),
                  fontSize: 16,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeroSection(size, isDesktop),

            _buildBrandLogosRow(isDesktop),

            _buildESPNPromoBanner(isDesktop),

            _buildTop10Section(),

            _buildPlanSelectionSection(isDesktop),

            _buildFAQSection(isDesktop),

            _buildFooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(Size size, bool isDesktop) {
    return Stack(
      children: [
        Container(
          height: isDesktop ? 650 : 580,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/hero_bg_local.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: isDesktop ? 650 : 580,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                const Color(0xFF040714).withOpacity(0.5),
                const Color(0xFF040714).withOpacity(0.85),
                const Color(0xFF040714),
              ],
              stops: const [0.0, 0.4, 0.75, 1.0],
            ),
          ),
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 12.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UEFA Champions League',
                      style: GoogleFonts.bebasNeue(
                        color: const Color(0xFF8E9099),
                        fontSize: 16,
                        letterSpacing: 2.0,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.4),
                      ),
                      child: Text(
                        'INICIAR SESIÓN',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 15,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isDesktop ? 60 : 40),

                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 180),
                    child: Image.asset(
                      'assets/images/logo_local.png',
                      color: Colors.white,
                      height: 60,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Text(
                          'Disney+',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Plan Premium',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 13,
                      letterSpacing: 1.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                Text(
                  'Series exclusivas, éxitos del cine,\nel deporte de ESPN y más',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    fontSize: isDesktop ? 54 : 36,
                    color: Colors.white,
                    height: 1.1,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  'Ingresa tu correo para comenzar',
                  style: GoogleFonts.lora(
                    fontSize: 17,
                    color: const Color(0xFFF9F9F9),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),

                Form(
                  key: _formKey,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu correo electrónico';
                            }
                            if (!RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            ).hasMatch(value)) {
                              return 'Ingresa un correo electrónico válido';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            fillColor: const Color(0xFF31343E),
                            filled: true,
                            hintText: 'Correo electrónico',
                            hintStyle: const TextStyle(
                              color: Color(0xFF8E9099),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 18,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xFF00D2F3),
                                width: 1.5,
                              ),
                            ),
                            errorStyle: const TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        ElevatedButton(
                          onPressed: _submitEmail,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF00D2F3),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'SUSCRIBIRME AHORA',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 18,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFFA6A9B2),
                      height: 1.5,
                    ),
                    children: [
                      const TextSpan(text: 'Ahorra desde 30% en '),
                      const TextSpan(
                        text: 'Disney+ Premium Anual',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: '.\n'),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Ver detalles de los planes',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBrandLogosRow(bool isDesktop) {
    final double height = isDesktop ? 60 : 40;
    return Container(
      color: const Color(0xFF080B1C),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLogo(
                  'Disney',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Disney%2B_logo.svg/160px-Disney%2B_logo.svg.png',
                  height,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'Pixar',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Pixar_logo.svg/160px-Pixar_logo.svg.png',
                  height * 0.7,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'Marvel',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Marvel_Logo.svg/160px-Marvel_Logo.svg.png',
                  height * 0.6,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'Star Wars',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/160px-Star_Wars_Logo.svg.png',
                  height * 0.75,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'Nat Geo',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/National_Geographic_logo.svg/160px-National_Geographic_logo.svg.png',
                  height * 0.7,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'ESPN',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/ESPN_wordmark.svg/160px-ESPN_wordmark.svg.png',
                  height * 0.5,
                ),
                _buildPlusSign(),
                _buildLogo(
                  'Hulu',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Hulu_Logo.svg/160px-Hulu_Logo.svg.png',
                  height * 0.55,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(String name, String url, double height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Image.network(
        url,
        height: height,
        fit: BoxFit.contain,
        color: Colors.white,
        errorBuilder: (context, error, stackTrace) {
          return Text(
            name.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          );
        },
      ),
    );
  }

  Widget _buildPlusSign() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        '+',
        style: TextStyle(
          color: Color(0xFF00D2F3),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildESPNPromoBanner(bool isDesktop) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: const BoxDecoration(color: Color(0xFF050816)),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Flex(
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: isDesktop ? 1 : 0,
                child: Container(
                  height: isDesktop ? 340 : 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1518063319789-7217e6706b04?q=80&w=800&auto=format&fit=crop',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Gradient overlay
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 20,
                        child: Row(
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/ESPN_wordmark.svg/120px-ESPN_wordmark.svg.png',
                              height: 18,
                              color: Colors.white,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Text(
                                    'ESPN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: const Text(
                                'Disney+ Premium',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 40, height: 24),
              // Promo Text Details
              Expanded(
                flex: isDesktop ? 1 : 0,
                child: Column(
                  crossAxisAlignment: isDesktop
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: isDesktop
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/ESPN_wordmark.svg/160px-ESPN_wordmark.svg.png',
                          height: 30,
                          color: Colors.white,
                          errorBuilder: (context, error, stackTrace) =>
                              const Text(
                                'ESPN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'EN',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8E9099),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Disney%2B_logo.svg/160px-Disney%2B_logo.svg.png',
                          height: 30,
                          color: Colors.white,
                          errorBuilder: (context, error, stackTrace) =>
                              const Text(
                                'Disney+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withOpacity(0.6),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
                      child: Text(
                        'Plan Premium',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 14,
                          letterSpacing: 1.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Toda la cobertura del mundial las 24 horas: los mejores partidos con tus relatores favoritos y los eventos en vivo que te apasionan están en el plan Premium de Disney+',
                      textAlign: isDesktop ? TextAlign.start : TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedPlan = 'premium';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00D2F3),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 36,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
                      child: Text(
                        'SUSCRIBIRME AHORA',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 18,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTop10Section() {
    return Container(
      color: const Color(0xFF040714),
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
            child: Text(
              'Top 10 Hoy',
              style: GoogleFonts.bebasNeue(
                fontSize: 42,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
          const SizedBox(height: 28),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 45),
              itemCount: _top10Movies.length,
              itemBuilder: (context, index) {
                final movie = _top10Movies[index];
                return Container(
                  margin: const EdgeInsets.only(right: 48),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // IMAGE TYPE 2 (CLOUD IMAGE): Movie posters loaded from Unsplash CDN
                      Container(
                        width: 140,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                movie['poster']!,
                                fit: BoxFit.cover,
                                loadingBuilder: (context, child, progress) {
                                  if (progress == null) return child;
                                  return Container(
                                    color: const Color(0xFF1E212E),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: const Color(0xFF1E212E),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.movie,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                              // Bottom info gradient
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.8),
                                      Colors.black,
                                    ],
                                    stops: const [0.6, 0.9, 1.0],
                                  ),
                                ),
                              ),
                              // Metadata text
                              Positioned(
                                bottom: 8,
                                left: 8,
                                right: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie['title']!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      movie['meta']!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xFF8E9099),
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Rank Number
                      // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
                      Positioned(
                        left: -32,
                        bottom: -15,
                        child: Text(
                          '${index + 1}',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 130,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -5,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3
                              ..color = const Color(0xFF00D2F3),
                            shadows: const [
                              Shadow(
                                offset: Offset(2, 2),
                                blurRadius: 8,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanSelectionSection(bool isDesktop) {
    return Container(
      color: const Color(0xFF050816),
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              // Title & Subtitle
              // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
              Text(
                '¿Qué plan vas a elegir?',
                style: GoogleFonts.bebasNeue(
                  fontSize: 48,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              // FONT STYLE 3 (Serif): GoogleFonts.lora
              Text(
                'Podrás modificarlo o cancelarlo cuando quieras.',
                style: GoogleFonts.lora(
                  fontSize: 16,
                  color: const Color(0xFFA6A9B2),
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 40),

              // Plan Switcher row
              Row(
                children: [
                  Expanded(
                    child: _buildPlanHeaderButton(
                      planName: 'PREMIUM',
                      price: 'PEN 68,90/mes (final)*',
                      badge: 'Más popular',
                      isActive: _selectedPlan == 'premium',
                      onTap: () {
                        setState(() {
                          _selectedPlan = 'premium';
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildPlanHeaderButton(
                      planName: 'ESTÁNDAR',
                      price: 'PEN 49,90/mes (final)*',
                      badge: null,
                      isActive: _selectedPlan == 'standard',
                      onTap: () {
                        setState(() {
                          _selectedPlan = 'standard';
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Detail Grid Table
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF0A0E23),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white.withOpacity(0.08)),
                ),
                child: Column(
                  children: [
                    // Header label
                    _buildComparisonLabelRow(
                      title: 'Plan anual',
                      subtitle: 'Disfruta de 12 meses al precio de 9**',
                      premiumText: 'PEN 577,90/año (final)**',
                      standardText: 'PEN 418,90/año (final)**',
                      isHighlightPremium: _selectedPlan == 'premium',
                    ),
                    _buildDivider(),

                    // Row 1
                    _buildComparisonFeatureRow(
                      title:
                          'Todos los canales de ESPN, torneos y más de 500 eventos exclusivos por mes***',
                      premiumWidget: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 22,
                      ),
                      standardWidget: const Text(
                        '—',
                        style: TextStyle(
                          color: Color(0xFF8E9099),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isHighlightPremium: _selectedPlan == 'premium',
                    ),
                    _buildDivider(),

                    // Row 2
                    _buildComparisonFeatureRow(
                      title: 'Calidad de video y sonido premium',
                      premiumWidget: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check, color: Colors.white, size: 22),
                          SizedBox(height: 2),
                          Text(
                            '4K UHD/HDR + Dolby Atmos',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF00D2F3),
                            ),
                          ),
                        ],
                      ),
                      standardWidget: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check, color: Colors.white, size: 22),
                          SizedBox(height: 2),
                          Text(
                            '1080p Full HD + Audio 5.1',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF8E9099),
                            ),
                          ),
                        ],
                      ),
                      isHighlightPremium: _selectedPlan == 'premium',
                    ),
                    _buildDivider(),

                    // Row 3
                    _buildComparisonFeatureRow(
                      title: 'Dispositivos para ver en simultáneo',
                      premiumWidget: const Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      standardWidget: const Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xFF8E9099),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isHighlightPremium: _selectedPlan == 'premium',
                    ),
                    _buildDivider(),

                    // Row 4
                    _buildComparisonFeatureRow(
                      title:
                          'Descargas para ver tus favoritos sin conexión ni demoras',
                      premiumWidget: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 22,
                      ),
                      standardWidget: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 22,
                      ),
                      isHighlightPremium: _selectedPlan == 'premium',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                '* El precio podría variar si el pago se realiza mediante otros proveedores. ** Descuento aplicable en comparación al plan de facturación mensual por 12 meses. *** Eventos y transmisiones en vivo están sujetos a derechos locales en cada país. **** Calidad de video y audio sujeta al dispositivo compatible y velocidad de conexión.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: const Color(0xFF8E9099).withOpacity(0.8),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanHeaderButton({
    required String planName,
    required String price,
    required String? badge,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Badge holder
          Container(
            height: 24,
            alignment: Alignment.center,
            child: badge != null
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Más popular',
                      style: TextStyle(
                        color: Color(0xFF040714),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          const SizedBox(height: 6),
          // Button Box
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              color: isActive
                  ? const Color(0xFF00D2F3)
                  : const Color(0xFF1E212E),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: isActive ? const Color(0xFF00D2F3) : Colors.transparent,
                width: 1,
              ),
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: const Color(0xFF00D2F3).withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Column(
              children: [
                // FONT STYLE 2 (Display): GoogleFonts.bebasNeue
                Text(
                  planName,
                  style: GoogleFonts.bebasNeue(
                    fontSize: 24,
                    color: isActive ? Colors.black : Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: isActive
                        ? Colors.black.withOpacity(0.8)
                        : const Color(0xFF8E9099),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonLabelRow({
    required String title,
    required String subtitle,
    required String premiumText,
    required String standardText,
    required bool isHighlightPremium,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8E9099),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                premiumText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: isHighlightPremium
                      ? const Color(0xFF00D2F3)
                      : Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                standardText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: !isHighlightPremium
                      ? const Color(0xFF00D2F3)
                      : const Color(0xFF8E9099),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonFeatureRow({
    required String title,
    required Widget premiumWidget,
    required Widget standardWidget,
    required bool isHighlightPremium,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFFE1E2E4),
                height: 1.3,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: isHighlightPremium
                  ? Theme(
                      data: ThemeData.dark().copyWith(
                        iconTheme: const IconThemeData(
                          color: Color(0xFF00D2F3),
                        ),
                      ),
                      child: premiumWidget,
                    )
                  : premiumWidget,
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: !isHighlightPremium
                  ? Theme(
                      data: ThemeData.dark().copyWith(
                        iconTheme: const IconThemeData(
                          color: Color(0xFF00D2F3),
                        ),
                      ),
                      child: standardWidget,
                    )
                  : standardWidget,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, color: Colors.white.withOpacity(0.08));
  }

  Widget _buildFAQSection(bool isDesktop) {
    return Container(
      color: const Color(0xFF040714),
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 850),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // FONT STYLE 3 (Serif): GoogleFonts.lora
              Text(
                'Preguntas frecuentes',
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 36),
              ..._faqs.map(
                (faq) => _buildFAQCard(faq['question']!, faq['answer']!),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFAQCard(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF131520),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white.withOpacity(0.04)),
      ),
      child: ExpansionTile(
        title: Text(
          question,
          // FONT STYLE 3 (Serif): GoogleFonts.lora for FAQ Questions
          style: GoogleFonts.lora(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        collapsedTextColor: Colors.white,
        textColor: Colors.white,
        iconColor: const Color(0xFF00D2F3),
        collapsedIconColor: Colors.white,
        childrenPadding: const EdgeInsets.all(20).copyWith(top: 0),
        shape: const Border(), // Removes the default border when expanded
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              answer,
              // FONT STYLE 3 (Serif): GoogleFonts.lora for FAQ Answers
              style: GoogleFonts.lora(
                color: const Color(0xFFA6A9B2),
                fontSize: 15,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection() {
    return Container(
      color: const Color(0xFF040714),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Column(
        children: [
          // IMAGE TYPE 1 (LOCAL IMAGE): Local asset logo
          Image.asset(
            'assets/images/logo_local.png',
            height: 35,
            color: Colors.white,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Text(
              'Disney+',
              style: GoogleFonts.bebasNeue(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Legal Links Row
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: [
              _buildFooterLink('Dispositivos compatibles'),
              _buildFooterLink('Contrato de suscripción'),
              _buildFooterLink('Política de privacidad'),
              _buildFooterLink('Privacidad en el Estado de California'),
              _buildFooterLink('Publicidad personalizada'),
              _buildFooterLink('Ayuda'),
            ],
          ),
          const SizedBox(height: 20),

          // Copyright and info text
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              '© 2026 Disney y sus entidades afiliadas. Todos los derechos reservados. El uso de este servicio está sujeto a las condiciones de uso y la política de privacidad aplicables. El contenido de este portal web es para propósitos ilustrativos y demostrativos.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xFF8E9099).withOpacity(0.7),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF8E9099),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
