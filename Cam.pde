class Pantalla{
  
  void display(){
   scale(2.5);  
   noFill();
   //tint(255,0,0);
  opencv.loadImage(video);
  image(video, 0, 0 );
  stroke(255, 255, 0);
 strokeWeight(4);
  textFont(font1,7);
  text("Selecciona A,B,C o D para cambiar filtro en el detector de rostro",10,260);
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  
  for (int i = 0; i<faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    
 }

  }
}
