//Vega Velásquez,Mayra 80458/4
//Comisión 3
// TP N° 2

PImage imagenrect;
void setup() {
  size(800, 400);
    imagenrect=loadImage("imagenrect.jpg");

}
void draw() {
  background(255);
  pushMatrix();
  cuadrado(cant, tam, ancho, colorlinea);
  popMatrix();
  image(imagenrect, 0, 0, 400, 400);
 

}

int cant=1;
int tam=500;
int ancho=800;
int z;
int colorlinea=0;

void cuadrado(int cant, int tam, int ancho, int colorlinea) {
  noFill();
  strokeWeight(7);
  stroke(colorlinea);
  translate(495, 100);
  rectMode(CENTER);


  for (int x=0; x<cant; x++) {
    for (int r=ancho; r>cant; r-=20) {
      rect(x*tam, 0, r, r);
      
      }
    }
  }

void mousePressed() {
  if (mousePressed&&(mouseButton==RIGHT)) {
    colorlinea= color(random(200), random(120), random(200));
    ancho++;
 
  }
}
void keyPressed() {
  if (key==' ') {
    colorlinea=0;
    ancho=400;
  }
}
