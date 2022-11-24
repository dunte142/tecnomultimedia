//patos y logica de movimiento
class Patos {
  //los diferentes patos
  PImage [] patos  = new PImage[5];
  int movX, movY, cant = 0;
  float velX = 2;
  float velY = 1;
  int  puntaje = 0;

  Patos() {
    patos [0] = loadImage("P1.png");
    patos [1] = loadImage("P12.png");
    patos [2] = loadImage("P2.png");
    patos [3] = loadImage("P32.png");
    patos [4] = loadImage("P3.png");
  }

  //metodo que dibuja los diferentes patos en movimiento
  void dibujar() {
    fill(0);
    textSize(12);
    text("Puntaje", 400, 50);
    textSize(15);
    text(puntaje, 450, 70);
    movX += velX;
    movY+=velY;
    image(patos[cant], movX, movY, 100, 100);

    //si llega a la imagen numero 5 vuelve a la inicial
    if (cant == 5) {
      cant =0;
      movX = 0;
      movY = 0;
      velX=3;
      velY =1;
    }
  }




  //logica de juego
  void jugar() {

    //si el pato sale de la pantalla
    if (movX >= 500) {
      estados.perdiste();
      puntaje = 0;
      cant =0;
      movX = 0;
      movY = 0;
      velX=3;
      velY =1;
    } else if (movX <= -100 ) {
      estados.perdiste();
      puntaje = 0;
      cant =0;
      movX = 0;
      movY = 0;
      velX=3;
      velY =1;
    }


    //calcula si el mouse esta sobre el pato para evaluar la colicion
    if (dist (mouseX, mouseY, movX, movY) < 100 && mousePressed) //el pato es una zona circular
    {
      disparo.trigger(); //es para que cada que se presione sonará el sonido volviendose un efecto repetitivo
      cant++;
      puntaje++;
      velX *=-1.5;
      velY *=-1.5;
    }
    if (cant == 5) {
      cant =0;
      movX = 0;
      movY = 0;
      velX=3;
      velY =1;
    }

    //si llegaste a esa cantidad de puntos llama al objeto pantalla y al metodo ganaste
    if (puntaje == 25) {
      estados.ganaste();
      cant =0;
      movX = 0;
      movY = 0;
      velX=3;
      velY =1;
    }
  }
}
