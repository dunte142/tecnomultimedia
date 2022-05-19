PImage imagen1, imagen2; //variable para la imagen
boolean boton; // variables que detectan donde esta el mouse
int posY,tamNombre; // variable para animar el texto de los personajes
PFont letra;

void setup() {

  size(600, 600);
 tamNombre = 48;
  //cargar imagenes
  imagen1 = loadImage("hunterXhunter.jpg");
  imagen2 = loadImage("hxh.jpg");
  letra = createFont("MSMINCHO.TTF", tamNombre);
  posY = 650;
 
 
}

void draw() {

  textFont(letra);
  //variable que interpreta que estoy cliqueando fuera de la imagen del comienzo
  boton = mouseX >= 150 && mouseX <= 400 && mouseY >= 400 && mouseY <= 500;



  if (frameCount >= 0 && frameCount <= 20 ) {
    background(255);
    image(imagen1, 0, 0, 600, 600);
    textSize(20);
    fill(0);
  }



  if ( frameCount >= 30 && frameCount <= 430) {
    pushStyle();
    tamNombre = 20;
    posY-=2;
    textSize(tamNombre);

    image(imagen2, 0, 0, 600, 600);
    text("Creado por Yoshihiro Togashi", 20, posY );

    text("Director del anime ", 20, posY+50);
    text("Kazuhiro Furuhashi", 20, posY+70);


    text("Productores", 20, posY+110);
    text("Toshio Nakatani", 20, posY+130);
    text("Manabu Tamura", 20, posY+150);
    text("Tetsuto Motoyasu", 20, posY+170);
    text("Akira Shinohara", 20, posY+190);
    text("Naoki  Iwasa", 20, posY+210);
    text("Tomojo Yoshino", 20, posY+230);


    text("Efectos Especiales", 20, posY+270);
    text("Ayumi Arahata", 20, posY+290);

    text("Edicion", 20, posY+320);
    text("Satishi Terauchi", 20, posY+340);

    text("Productor Musical", 20, posY+370);
    text("Shinya Yamada", 20, posY+390);

    text("Musica", 20, posY+420);
    text("Yoshihina Hirano", 20, posY+440);

    text("Personajes principales", 20, posY+480);
    text("Gon Freecss por Megumi Han", 20, posY+510);
    text("Killua Zoldyck por Mariya Ise", 20, posY+530);
    text("Kurapika por Miyuki Sawashiro", 20, posY+550);
    text("Leorio Paladiknight por Keiji Fujiwara ", 20, posY+570);

    text("Creditos Por...", 20, posY+650);
    text("Haga clicl para averiguarlo", 20, posY+700);
    popStyle();
  }

  if (frameCount >=400 && mousePressed) {
    tamNombre = 48;
    textSize(tamNombre);
    background(200, 170, 170);
    text("Dante Nuñez", 50, 100);

    text("Precione el boton", 10, 300);
    text("para volver a ver", 10, 350);
    pushStyle();
    fill(random(255), random(255), random(255));
    rect(150, 400, 250, 100);
    popStyle();
  }
  
 

  if (frameCount >=410 && mousePressed && boton) {
    frameCount = 0;
    posY = 650;
  }
}
