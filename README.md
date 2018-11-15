# PROYECTO4
import gab.opencv.*;
import processing.video.*;
import java.awt.*;




Capture video;
OpenCV opencv;
PImage r,g,b,h,s,v;
Pantalla pantalla;
Filtro filtro;
PFont font1;


void setup() {
  size(800, 670);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  opencv.loadImage(video);
  pantalla = new Pantalla();
 filtro= new Filtro();
 font1= loadFont("CourierNewPS-BoldMT-48.vlw");
 video.start();
 
 
 r= opencv.getSnapshot(opencv.getR());
 g= opencv.getSnapshot(opencv.getG());
 b = opencv.getSnapshot(opencv.getB());
  
 
  opencv.useColor(HSB);
 
 h= opencv.getSnapshot(opencv.getR());
 s= opencv.getSnapshot(opencv.getG());
 v= opencv.getSnapshot(opencv.getB());
 

}

void draw() {
 pantalla.display();
 filtro.filt();
}

void captureEvent(Capture c) {
  c.read();
 

}
