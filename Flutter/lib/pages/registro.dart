import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Registro extends StatelessWidget {
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
            right: -37,
            top: -44,
            bottom: -126,
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
            padding: EdgeInsets.fromLTRB(30, 44, 37, 126),
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
                  margin: EdgeInsets.fromLTRB(8, 0, 7, 81),
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
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 0, 20),
                            child: Text(
                              'Registrate',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF135D66),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 0, 39),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Nombres',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF135D66),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF135D66),
                                  ),
                                  child: Container(
                                    width: 237,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 0, 39),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Apellido',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF135D66),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF135D66),
                                  ),
                                  child: Container(
                                    width: 237,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 0, 39),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'E-mail',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF135D66),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF135D66),
                                  ),
                                  child: Container(
                                    width: 237,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 2, 39),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Contraseña',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF135D66),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF135D66),
                                  ),
                                  child: Container(
                                    width: 237,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Confirmar Contraseña',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF135D66),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF135D66),
                                  ),
                                  child: Container(
                                    width: 237,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
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
                        'Registarse',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}