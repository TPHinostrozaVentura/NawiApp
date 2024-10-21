import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camera/camera.dart';
import 'main.dart'; // Importa la pantalla de detección de objetos en tiempo real
import 'guide_screen.dart'; // Asegúrate de crear esta pantalla para la guía de uso

class SplashScreen extends StatelessWidget {
  final List<CameraDescription> cameras;

  SplashScreen({required this.cameras});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animación del logotipo
            Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/logo.png', // Asegúrate de tener un logo en esta ruta
                height: 420.0,
                width: 420.0,
              ),
            ),
            SizedBox(height: 30),
            // Texto elegante con Google Fonts
            Text(
              'Ñawi Sense',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Botón de inicio
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent, // Fondo del botón
                foregroundColor: Colors.white, // Color del texto
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RealTimeObjectDetection(cameras: cameras),
                  ),
                );
              },
              child: Text(
                'Iniciar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            // Botón para la guía de uso
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Fondo del botón de guía
                foregroundColor: Colors.white, // Color del texto
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GuideScreen(), // Pantalla de la guía
                  ),
                );
              },
              child: Text(
                'Guía de uso',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
