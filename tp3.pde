PImage [] patos  = new PImage[5];
PImage perro, arbol1, pasto1, nube1, casa;
int movX, movY, cant, puntaje = 0;
int velX=3;
int velY =1;
int pantalla;
int posX, posY;
PFont font;
int cant1 = 5 ;
int tam2;

void setup() {
  size(500, 500);
  posY =10;
  tam2 = 1000/cant1;
  patos [0] = loadImage("P1.png");
  patos [1] = loadImage("P12.png");
  patos [2] = loadImage("P2.png");
  patos [3] = loadImage("P32.png");
  patos [4] = loadImage("P3.png");
  pasto1 = loadImage("pasto2.png");
  arbol1 =loadImage("arbol1.png");
  casa=loadImage("casa.png");
  perro  = loadImage("PERRO.png");
  font = createFont("m29.TTF", 20);
  textFont(font);
}

void draw() {
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



  //Pantalla de instrucciones
  if (pantalla == 1) {
    posX ++;
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
    pantalla = 2;
  }
  if (pantalla == 2) {
    posX=0;
    background(0, 153, 153);
      image(pasto1, -30, 430, 600, 100);
      image(arbol1, 0, 270, 250, 200);
      image(casa, 410, 360, 100, 100);
      Pato();
      textSize(12);
      text("Puntaje", 400, 50);
      textSize(15);
      text(puntaje, 450, 70);
      mira();
  }
   if (puntaje >=10){
      background(255, 255, 153);
      image(pasto1, -30, 430, 600, 100);
      image(arbol1, 0, 270, 250, 200);
      image(casa, 410, 360, 100, 100);
      Pato();
      textSize(12);
      text("Puntaje", 400, 450);
      textSize(15);
      text(puntaje, 450, 70);
      mira();
    }
   if (puntaje >=20){
      background(255, 102,102);
      image(pasto1, -30, 430, 600, 100);
      image(arbol1, 0, 270, 250, 200);
      image(casa, 410, 360, 100, 100);
      Pato();
      textSize(12);
      text("Puntaje", 400, 50);
      textSize(15);
      text(puntaje, 450, 70);
      mira();
    }



    //pantalla de game over
    if (pantalla == 3) {
      background(153,0,0);
      textSize(50);
      fill(0);
      text("Perdiste", 80, 100);
      textSize(10);
      fill(0, 0, 255);
      text("Presiona 'R' para volver a jugar", 130, 300);
      image(perro, width/2, 350, 200, 200);
    }
  }



  //patos y logica de movimiento
  void Pato() {
   
    movX += velX;
    movY+=velY;
    image(patos[cant], movX, movY, 100, 100);
  if (movX >= 500) {
    pantalla = 3;
    /* cant++;
     velX =-6;
     velY =-2;
     */
  } else if (movX <= -100 ) {
    pantalla = 3;
    /* cant++;
     velX =+8;
     velY =+3;
     */
  }
  if (cant == 5) {
    cant =0;
    movX = 0;
    movY = 0;
    velX=3;
    velY =1;
  }

}


void mira() {
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, height, mouseY);
}

  
//logica de juego
void mousePressed() {
  if (dist (mouseX, mouseY, movX, movY) < 100) //el pato es una zona circular
  {
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
}


void keyPressed() {
  if (key == ENTER) {
    pantalla = 1;
  }

  if (key == 'r') {
    pantalla=0;
    posX=0;
    movX=0;
    movY=0;
    cant=0;
    puntaje=0;
  }
}
