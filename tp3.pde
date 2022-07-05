PImage [] personajes  = new PImage[7];
PImage arbol1, pasto1, nube1,casa;
PFont font;
int pantalla, cant, mov = 0;
int posX, posY;
void setup() {
  size(500, 500);
  background(255);
  posY =10;
  personajes [0] = loadImage("P1.png");
  personajes [1] = loadImage("P12.jpg");
  personajes [2] = loadImage("P2.png");
  personajes [3] = loadImage("P3.png");
  personajes [4] = loadImage("P32.jpg");
  personajes [5] = loadImage("PERRO.jpg");
  personajes [6] = loadImage("PERRO2.png");
  pasto1 = loadImage("pasto2.png");
  arbol1 =loadImage("arbol1.png");
  nube1=loadImage("nube1.png");
 font = createFont("m29.TTF", 20);
  textFont(font);
}

void draw() {

  //Pantalla de inicio
 background(0, 153, 153);  
  fill(0);
  textSize(50);
  text("HUNTING\n   DAY", 100, 100);
  image(pasto1, -30, 430, 600, 100); 
  textSize(10);
  fill(255, 0, 0);
  text("Presiona 'ENTER' para empezar", 130, 350);


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
    mov+=5;
    background(0, 0, 200);
    image(personajes[cant], mov, posY, 80, 80);
    image(personajes[cant], mov, posY, 100, 100);
    image(pasto1, -30, 430, 600, 100);
    image(arbol1, 0, 270, 250, 200);
    image(casa, 410, 360, 100, 100);
  }
  if(mov >=510){
  mov+=-mov;
  posY+=20;
  cant++;
  image(personajes[cant], mov, posY, 100, 100);
  }


}


void keyPressed() {
  if (key == ENTER) {
    pantalla = 1;
  }
}
