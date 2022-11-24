class Estados {

  Mira mira;
  Patos patos;

  int pantalla;
  int posX, posY;
  int cant1 = 5 ;
  int tam2;
  PImage perro, arbol1, pasto1, nube1, casa, ganaste;
  PFont font;


  Estados() {

    mira = new Mira();
    patos = new Patos();

    pantalla = 1;
    pasto1 = loadImage("pasto2.png");
    arbol1 =loadImage("arbol1.png");
    casa=loadImage("casa.png");
    nube1 =loadImage("nube1.png");
    perro  = loadImage("PERRO.png");
    ganaste  = loadImage("ganaste.png");
    font = createFont("m29.TTF", 20);
    posY =10;
    textFont(font);
    tam2 = 1000/cant1;
    posX=0;
  }

  void estados() {

    //pausa y play de la musica de inicio
    if (pantalla == 1) {
      intro.play();
      if (key=='o' || key =='O') {
        intro.play();
      }
      if (key == 'p' || key == 'P') {
        intro.pause();
        intro.rewind();
      }

      noCursor();//para que no se vea el cursor en la ventana
      //Pantalla de inicio
      background(0, 153, 153);
      fill(0);
      textSize(50);
      text("HUNTING\n   DAY", 100, 100);
      image(pasto1, -30, 430, 600, 100);
      textSize(10);
      fill(255, 0, 0);
      text("Presiona ''ENTER'' para empezar", 130, 350);
    }

    //logica de estados estado 1 muestra una cosa , estado 2 muestra otra
    if (pantalla == 1 && keyPressed && key == ENTER) {
      pantalla = 2;
      intro.pause();
    }

    //Pantalla de instrucciones
    if (pantalla == 2) {
      posX ++;
      ladrido.play();
      background(0);
      fill(255);
      textSize(30);
      text("Como Jugar", 100, 80);
      textSize(15);
      text("Dispara a los pajaros\n utilizando el mouse \npara sumar puntaje!", 120, 230, 20);
      fill(255);
      rect(0, 490, posX, 10);
    }


    //Pantalla de Juego
    if (posX == 500) {
      pantalla = 3;
    }


    //pantalla donde se dibuja el fondo y se llama al objeto que construye el juego
    if (pantalla == 3) {
      posX=0;
      background(0, 153, 153);
      image(pasto1, -30, 430, 600, 100);
      image(arbol1, 0, 270, 250, 200);
      image(casa, 410, 360, 100, 100);
      for (int x=0; x<25; x+=5) {
        for (int y=0; y<10; y+=5) {
          image(nube1, x*20, y*20, 100, 100);
        }
      }
      patos.dibujar();
      patos.jugar();
      mira.dibujar();
    }

//pantalla de creditos
    if (pantalla == 6) {
      background(0, 0, 0);
      textSize(20);
      fill(255);
      text("Creditos", 125, 50);
      textSize(20);
      fill(255);
      textSize(20);
      fill(255);
      text("Camila Martin", 125, 225);
      textSize(20);
      fill(255);
      text("Ramiro Juarez", 125, 275);
      textSize(10);
      fill(0, 0, 255);
      text("Presiona 'R' para regresar al inicio", 125, 450);
    }


    //para reiniciar el programa
    if (pantalla == 4 && keyPressed && key == 'r' || key == 'R') {

      pantalla = 1;
      intro.play();
    }
    if (pantalla == 5 && keyPressed && key == 'r' || key == 'R') {

      pantalla = 1;
      intro.play();
    }

    if (pantalla == 6 && keyPressed && key == 'r' || key == 'R') {
      pantalla = 1;
      intro.play();
    }

//Para ir a los creditos

    if (pantalla == 4 && keyPressed && key == 'c' || key == 'C') {
      pantalla = 6;
    }
    if (pantalla == 5 && keyPressed && key == 'c' || key == 'C') {

      pantalla = 6;
    }
  }


  //pantalla de game over
  void perdiste() {
    pierde.play();
    risa.play();
    pantalla = 4;
    background(153, 0, 0);
    textSize(50);
    fill(0);
    text("Perdiste", 80, 100);
    textSize(10);
    fill(0, 0, 255);
    text("Presiona 'R' para volver a jugar", 130, 300);
    image(perro, width/2, 350, 200, 200);
    textSize(8);
    fill(0, 0, 255);
    text("Presiona 'C' para ver los creditos.", 2/width+5, 480);
  }


  //pantalla de ganaste
  void ganaste() {
    pantalla = 5;
    push();
    background(255);
    textSize(50);
    fill(0);
    text("Ganaste", 80, 100);
    textSize(10);
    fill(0, 0, 255);
    text("Presiona 'R' para volver a jugar", 130, 450);
    imageMode(CENTER);
    image(ganaste, width/2, height/2, 200, 200);
    textSize(8);
    fill(0, 0, 255);
    text("Presiona 'C' para ver los creditos.", 130, 480);
    pop();
  }
}
