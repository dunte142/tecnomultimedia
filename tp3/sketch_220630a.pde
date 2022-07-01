PImage [] personajes  = new PImage[7];
float x, y, w, h;
//PFont font;
int pantalla,cant = 0;
int posX;
void setup() {
  size(500, 500);
  background(255);
  x = 200;
  y = 300;
  w = 100;
  h = 50;
  personajes [0] = loadImage("P1.png");
  personajes [1] = loadImage("P12.jpg");
  personajes [2] = loadImage("P2.png");
  personajes [3] = loadImage("P3.png");
  personajes [4] = loadImage("P32.jpg");
  personajes [5] = loadImage("PERRO.jpg");
  personajes [6] = loadImage("PERRO2.png");
  //font = createFont("Shotgun.ttf", 20);
  //textFont(font);
}

void draw() {
  posX ++;
  //Pantalla de inicio
  background(255);
  fill(255);
  rect(x, y, w, h);
  textSize(30);
  fill(0);
  text("Play", 220, 335);
  textSize(100);
  text("HUNTING\n     DAY", 50, 100);

  //Pantalla de instrucciones
  if (pantalla == 1) {
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
    background(0, 0, 200);
     image(personajes[cant], width/2, height/2);
  }


  if (mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      pantalla = 1;
    }
  }
}
