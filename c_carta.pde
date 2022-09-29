class Carta {
  float x1, y1, x2, y2,
    x3, y3, x4, y4,
    x5, y5, x6, y6,
    x7, y7, x8, y8,
    x9, y9, x10, y10,
    x11, y11, x12, y12,
    x13, y13, x14, y14,
    x15, y15, x16, y16,
    x17, y17, x18, y18,

    x19, y19, x20, y20,
    x21, y21, x22, y22,
    x23, y23, x24, y24,
    x25, y25, x26, y26,
    x27, y27, x28, y28

    ;

  //constructor
  Carta( float x1_, float y1_, float x2_, float y2_,
    float x3_, float y3_, float x4_, float y4_,
    float x5_, float y5_, float  x6_, float  y6_,
    float x7_, float y7_, float x8_, float y8_,
    float x9_, float y9_, float x10_, float y10_,
    float x11_, float y11_, float x12_, float y12_,
    float x13_, float y13_, float x14_, float y14_,
    float x15_, float y15_, float x16_, float y16_,
    float x17_, float y17_, float x18_, float y18_,

    float x19_, float y19_, float x20_, float y20_,
    float x21_, float y21_, float x22_, float y22_,
    float x23_, float y23_, float x24_, float y24_,
    float x25_, float y25_, float x26_, float y26_,
    float x27_, float y27_, float x28_, float y28_



    ) {

    x1 = x1_;
    y1 = y1_;
    x2 = x2_;
    y2 = y2_;
    x3 = x3_;
    y3 = y3_;
    x4 = x4_;
    y4 = y4_;
    x5 = x5_;
    y5 = y5_;
    x6 = x6_;
    y6 = y6_;
    x7 = x7_;
    y7 = y7_;
    x8 = x8_;
    y8 = y8_;
    x9 = x9_;
    y9 = y9_;
    x10 = x10_;
    y10 = y10_;
    x11 = x11_;
    y11 = y11_;
    x12 = x12_;
    y12 = y12_;
    x13 = x13_;
    y13 = y13_;
    x14 = x14_;
    y14 = y14_;
    x15 = x15_;
    y15 = y15_;
    x16 = x16_;
    y16 = y16_;
    x17 = x17_;
    y17 = y17_;
    x18 = x18_;
    y18 = y18_;

    x19 = x19_;
    y19 = y19_;
    x20 = x20_;
    y20 = y20_;
    x21 = x21_;
    y21 = y21_;
    x22 = x22_;
    y22 = y22_;
    x23 = x23_;
    y23 = y23_;
    x24 = x24_;
    y24 = y24_;
    x25 = x25_;
    y25 = y25_;
    x26 = x26_;
    y26 = y26_;
    x27 = x27_;
    y27 = y27_;
    x28 = x28_;
    y28 = y28_;
  }
  void actualizar() {
    dibujar();
  }
  void dibujar() {

    line(x1, y1, x2, y2 );
    line(x3, y3, x4, y4);
    line(x5, y5, x6, y6);
    line(x7, y7, x8, y8);
    line(x9, y9, x10, y10);
    line(x11, y11, x12, y12);
    line(x13, y13, x14, y14);
    line(x15, y15, x16, y16);
    line(x17, y17, x18, y18);
    line(x19, y19, x20, y20);
    line(x21, y21, x22, y22);
    line(x23, y23, x24, y24);
    line(x25, y25, x26, y26);
    line(x27, y27, x28, y28);
  }
}
