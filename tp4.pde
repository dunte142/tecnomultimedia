Boton b1, b2, b3, b4;

Carta Dante, Ramiro, Camila;

PImage carta;

int Pantalla = 0;


void setup() {
  size(400, 400);
  b1 = new Boton( "Seleccionar", width/2-120, height/2+120, 110, 30);
  b2 = new Boton( "Seleccionar", width/2, height/2+120, 110, 30);
  b3 = new Boton( "Seleccionar", width/2+120, height/2+120, 110, 30);
  b4 = new Boton( "Salir", 20, 20, 50, 30);

  carta = loadImage ("carta.png");
  Dante = new Carta
    (60, 200, 120, 80, 
    120, 80, 300, 310
    , 300, 310, 60, 250
    , 60, 250, 280, 80
    , 280, 80, 340, 250
    , 280, 80, 335, 260
    , 350, 230, 60, 200
    , 280, 80, 300, 310, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0
    ); 

  Ramiro = new Carta (130, 120, 100, 220, 
    100, 220, 250, 90, 
    130, 120, 110, 230, 
    110, 230, 230, 80, 
    230, 80, 290, 210, 
    290, 210, 150, 80, 
    150, 80, 120, 220, 
    120, 220, 160, 90, 
    160, 90, 280, 150, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0, 
    0, 0, 0, 0 ); 


  Camila = new Carta
    (150, 150, 160, 280, 
    160, 280, 280, 260, 
    280, 260, 240, 130, 
    240, 130, 150, 150, 
    150, 150, 310, 190, 
    310, 190, 120, 210, 
    120, 210, 150, 150, 
    120, 210, 240, 127, 
    240, 127, 125, 240, 

    125, 240, 300, 140, 
    300, 140, 280, 260, 
    280, 260, 125, 240, 
    160, 280, 280, 120, 
    280, 120, 280, 260) ;
}

void draw() {

  
    //pantallas 
  if (Pantalla == 0) { 
    Menu();
  } else if (Pantalla == 1) { 
    Dante();
  } else if (Pantalla == 2) {
    Ramiro();
  } else if (Pantalla == 3) {
    Camila();
  }
  

    //botones
  b1.actualizar();
  b2.actualizar();
  b3.actualizar();
  b4.actualizar();
  
  
}



void mousePressed() {
  if (b1.click()) {
    Dante();
    Dante.actualizar();
  }
  if (b2.click()) {
    Ramiro();
    Ramiro.actualizar();
  }
  if (b3.click()) {
    Camila();
    Camila.actualizar();
  }
  if (b4.click()) {
    exit();
  }
}
