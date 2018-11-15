class Filtro{
  
  
  void filt(){
    if(keyPressed){
  if(key== 'a' || key== 'A'){
  scale(2.5);  
   noFill();
   tint(255,0,0);
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
    
    if(keyPressed){
  if(key== 'b' || key== 'B'){
  scale(2.5);  
   noFill();
   tint(0,255,0);
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
    
     if(keyPressed){
  if(key== 'c' || key== 'C'){
  scale(2.5);  
   noFill();
   tint(0,0,255);
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
    
     if(keyPressed){
  if(key== 'd' || key== 'D'){
 
   //tint(0,0,255);
   updatePixels();
   video.read();
    image(video, 0, 0 );
   loadPixels();
    scale(2.5);
    image(video, 0, 0 );
   
  opencv.loadImage(video);
// noFill();
  //stroke(255, 255, 0);
  
 h= opencv.getSnapshot(opencv.getH());
  
  image(h,0,0);
  updatePixels();
  // s= opencv.getSnapshot(opencv.getS());
    //v= opencv.getSnapshot(opencv.getV());
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
    
    
    
    
    
  }
}
  
