class Boton {

  float x, y, ancho, alto;
  String txt;
  color colNormal, colOver;

  //constructor:
  Boton( String txt_, float x_, float y_, float ancho_, float alto_ ) {
    txt = txt_;
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    colNormal = color(175);
    colOver = color(225);
  }

  void actualizar() {
    push();
    translate(x, y);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if ( isOver() ) {
      fill(colOver);
    } else {
      fill(colNormal);
    }
    rect(0, 0, ancho, alto);
    fill(50);
    text( txt, 0, 0);
    pop();
  }

  boolean isOver() {
    return ( mouseX>x-ancho/2 && mouseX<x+ancho/2 &&
      mouseY>y-alto/2 && mouseY<y+alto/2);
  }

  boolean click() {
    return isOver();
  }
}
