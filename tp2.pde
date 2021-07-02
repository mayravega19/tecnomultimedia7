int estado = 0;
float mov, vel;
//declaracion de imagenes
PImage fondo;
PImage portadavincenzo;
PImage vincenzo1;
PImage vincenzo2;
PImage vincenzo3;
//declaracion de fuentes usadas
PFont miFuente;
PFont fuenteNetflix;
PFont segundaFuente;

String miTexto;
float posY;

void setup() {
  size(1000,700);
  
 //inicializo las variables
  mov = height + 200;
  vel = 2; 
 //pantalla creditos
  mov = height + 200;
  vel = 2; 
 //variable: asignacion
  miTexto = "NETFLIX";
  posY = -80;
  
 //funciones que afectan a text()
  textSize( 15 );
  textAlign( CENTER, CENTER );
  
 //aignacion de fuentes
   miFuente = createFont( "AbandoN.ttf", 60 ); //fuente de Personajes
   fuenteNetflix = createFont( "LetteringDecoShadow.ttf", 100); //fuente de pantalla netflix
   segundaFuente = createFont( "Crushwear Regular.ttf", 50); //fuente de Creditos
   posY = height;
   
 // se carga las imagenes desde la carpeta data
   portadavincenzo= loadImage( "portadavincenzo.jpg" ); //portada de serie
   vincenzo1= loadImage( "vincenzo1.jpg" ); //personaje1
   vincenzo2= loadImage( "vincenzo2.jpg" ); //personaje2
   vincenzo3= loadImage( "vincenzo3.jpg" ); //persoanje3
  imageMode(CENTER); 
 
}

void draw() {
  if (  estado==0 ) {
    background(7,7,7);
//pantalla de portada de netflix
 //ANIMACION PALABRA
  textAlign( CENTER,CENTER );
  textFont(fuenteNetflix );
   text( " NETFLIX " , width/2, height/2+frameCount);
  fill(205,42,39);

  text( "NETFLIX " , width/2, height/2);
  text( "Producido por " , width/3, height/3);
  fill(93,97,94);
  
//portada de serie "VINCENZO"
   
  } else if (  estado==1 ) {
   image(portadavincenzo,width/2,height/2);
   textAlign( CENTER,CENTER );
  textFont( miFuente);
  text( " VINCENZO " , width/4, height/2+frameCount);
   fill(196,25,25);
  text( " VINCENZO " , width/4, height/2);
   fill(248,241,241);
  textAlign(CENTER);
   
 //pantalla personaje 1  
    
  } else if (  estado==2 ) {
    
    image(vincenzo1,width/2,height/2);
    textAlign( CENTER,CENTER );
     textFont( miFuente);
    text( "JEON YEO-BEEN", width/2, height/2 );
     fill(196,25,25);
   textSize( 30 ); 
  text( "Como", width/2, mov-600 );
  text( "Hong Cha-young", width/2, mov-500 ); 
   fill(248,241,241);
   
 // se actualiza las variables
  mov = mov + vel;

//pantalla personaje 2

  } else if ( estado==3 ) {
    
    image(vincenzo2,width/2,height/2);
    textAlign( CENTER,CENTER );
     textFont( miFuente);
    text( "SONG JOONG-KI", width/2, height/2 );
     fill(196,25,25);
   textSize( 30 ); 
  text( "Como", width/2, mov-600 );
  text( "Vincenzo Cassano", width/2, mov-500 ); 
   fill(248,241,241);
   
 // se actualiza las variables
  mov = mov + vel;
  
//pantalla personaje 3
 
  } else if ( estado==4 ) {
   
    image(vincenzo3,width/2,height/2);
   textAlign( CENTER,CENTER );
     textFont( miFuente);
     textSize( 40 );
    text( "OK TAEC-YEON", width/2, height/2 );
     fill(196,25,25);
    text("por Jang Han-seo", 600, 470);
 
 //pantalla creditos 
 
  } else if ( estado==5 ) {
    
    background(11, 12, 11 );
     textFont( segundaFuente);
     textSize( 40 );
  text( "CREDITOS - VINCENZO", width/2, mov );
  textSize( 30 );
  text( "Creado por : STUDIO DRAGON", width/2, mov+500 );
  text( "Dirigido por : KIM HEE WON", width/2, mov+600 );
  text( "Productores", width/2, mov+700 );
    text( " LEE JANG-SOO ", width/2, mov+800 );
      text( "JANG SAE JUNG", width/2, mov+900 );
  
  //2) actualizo las variables
  mov = mov - vel;
 
  }

}

void mousePressed(){
  if ( estado==0 ) {
    estado=1;
  } else if ( estado==1 )  {
    estado=2;
  } else if ( estado==2 ) {
    estado=3;
  } else if ( estado==3 ) {
    estado=4;
  } else if ( estado==4 ) {
    estado=5;
  } else if ( estado==5 ) {
    estado=0;
  
}
}
