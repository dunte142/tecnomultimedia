//TP3 Dante Nuñez
//https://youtu.be/Iy7l7NWdT34 video explicando
float mov=1; //variable para que las ellipse tenga movimiento

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  mov++;

  ilusion();

  boton();
  
 //entendimiento del espacio donde estara el boton
  boolean estoyDentroDelBoton = (mouseX > 50) &&  (mouseX <150) && (mouseY > 250) &&  (mouseY < 330);

//pregunta si presionaste el boton
  if (mousePressed && estoyDentroDelBoton) {
    background(random(255), random(255), random(255));
    for (int i =0; i < 200; i+=10) {
      noFill();
      ellipse(width/2, 100, i+mov, i+mov);
    }
  }
  if (mov >= 70) mov=0; //reinicio del tamaño de las ellipses
}

void ilusion () { // tipo Moare
  for (int i =0; i < 200; i+=1) {
    noFill();
    ellipse(width/2, 100, i+mov, i+mov);
  }
}

void boton() {
  textSize(15);
  text("NO PRESIONAR", 160, 300);
  fill(130, 120, 120);
  rect(50, 250, 100, 80);
}
