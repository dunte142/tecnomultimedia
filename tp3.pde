PImage [] patos  = new PImage[5];
PImage perro;
float x, y, w, h;
int movX, movY, cant, puntaje = 0;
int velX=3;
int velY =1;


int pantalla;
int posX, posY;
void setup() {
  size(500, 500);
  background(255);
  x = 200;
  y = 300;
  w = 100;
  h = 50;
  posY =10;
  patos [0] = loadImage("P1.png");
  patos [1] = loadImage("P12.png");
  patos [2] = loadImage("P2.png");
  patos [3] = loadImage("P32.png");
  patos [4] = loadImage("P3.png");



  perro  = loadImage("PERRO.png");
}

void draw() {
noCursor();//para que no se vea el cursor en la ventana
  //Pantalla de inicio
  background(255);
  fill(255);
  rect(x, y, w, h);
  textSize(30);
  fill(0);
  text("Play", 220, 335);
  textSize(100);
  text("HUNTING\n     DAY", 50, 100);
  mira();
  //Pantalla de instrucciones
  if (pantalla == 1) {
    posX ++;
    background(0);
    fill(255);
    textSize(60);
    text("Como Jugar", 90, 70);
    fill(255);
    rect(0, 490, posX, 10);
  }
  //Pantalla de Juego
  if (posX == 500) {
    pantalla = 2;
  }
  if (pantalla == 2) {
    posX=0;
    background(0, 0, 200);
    Pato();

    text(puntaje, 350, 350);
    mira();
  }
  //pantalla de game over
  if (pantalla == 3) {

    textSize(40);
    background(50, 255, 255);
    text("Perdiste", 0, height/2);
    text("Presiona R para volver", 0, 350);
    image(perro, width/2, 350, 200, 200);
  }




  if (pantalla == 0 && mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      pantalla = 1;
    }
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
  if (key == 'r') {
    pantalla=0;
    posX=0;
    movX=0;
    movY=0;
    cant=0;
    puntaje=0;
  }
}
