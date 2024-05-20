import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/registro.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: -30,
            right: -30,
            top: -44,
            bottom: -103,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF003C43),
              ),
              child: Container(
                width: 390,
                height: 844,
              ),
            ),
          ),
    Container(
            padding: EdgeInsets.fromLTRB(30, 44, 30, 103),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 57),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 2, 15, 1),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/rectangle_3.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 97,
                              height: 93,
                            ),
                          ),
                        ),
                        Text(
                          'SITA\nSistema Integrado de\nTransporte Público en\nArequipa',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFFE3FEF7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 7, 80),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE3FEF7),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Inicia sesión',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xFF135D66),
                            ),
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF135D66),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  fillColor: Color(0xFF135D66),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF135D66)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF135D66),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  fillColor: Color(0xFF135D66),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF135D66)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // Función para manejar el olvido de contraseña
                                },
                                child: Text(
                                  '¿Olvidó su contraseña?',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF135D66),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE3FEF7),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    width: 308,
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 1.6),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Iniciar Sesión',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 1.6, 0),
                  child: RichText(
                    text: TextSpan(
                      text: '¿No tienes una cuenta? ',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: [
                        TextSpan(
                          text: 'Regístrate',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            height: 1.3,
                            color: Color(0xFF77B0AA),
                            decorationColor: Color(0xFF77B0AA),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Registro()),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}