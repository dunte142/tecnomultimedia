// Integrantes: Dante Nuñez, Camila Martin , Ramiro Juarez
//Video explicando
//https://youtu.be/JTjLk0K-fjQ

//importar biblioteca
import ddf.minim.*;

Estados estados;

Minim minim;
// audioplayer para sonidos durareros
AudioPlayer intro;
AudioPlayer ladrido;
AudioPlayer pierde;
AudioPlayer risa;

// audiosample para sonidos cortos como sonido de efectos, golpes, patadas, disparo.
AudioSample disparo;

void setup() {
  size(500, 500);
  estados = new Estados();
  
  //carga de archivos mp3
    minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  ladrido = minim.loadFile ("ladrido.mp3");
  pierde = minim.loadFile ("lose.mp3");
  risa = minim.loadFile ("risaperro.mp3");
  
  disparo = minim.loadSample ("disparo.mp3", 512); //512 las veces que se utilizara
  
}

void draw() {
  
  estados.estados();
  
}
