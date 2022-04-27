
size(400, 400);



background(181, 83, 183); //fondo

//la cabeza
fill(160, 150, 90);
rect(80, 100, 220, 220, 12, 12, 85, 85);

//comenzando a hacer el los ojos

//ojo izquierdo
fill(255);//color de la esclerotica
ellipse(130, 200, 100, 50);

fill(80, 60, 7); //color de la iris
ellipse(110, 200, 40, 40);

fill(0); //pupila
ellipse(110, 200, 10, 10);

//ojo derecho
fill(255);//color de la esclerotica
ellipse(250, 200, 100, 50);

fill(80, 60, 7); //color de la iris
ellipse(230, 200, 40, 40);

fill(0); //pupila
ellipse(230, 200, 10, 10);

//la boca
strokeWeight(6);
line(130, 260, 250, 260);

//el pelo
strokeWeight(30);
line(80, 110, 280, 100);
line(90, 100, 280, 90);
line(100, 90, 280, 80);

//la colita
strokeWeight(0);
fill(255);
ellipse( 300, 80, 60, 60 );

//el pelo continua
strokeWeight(30);
fill(0);
line(310, 80, 350, 300);
line(310, 90, 340, 300);
line(320, 90, 360, 300);
