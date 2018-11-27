PImage img1;
PImage img2;
PImage img3;
PImage img4;


// citation: https://github.com/shiffman/Face-It by  Daniel Shiffman, ITP Fall 2013
import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;

String k1 = "00856467";
OpenCV opencv;
Capture cam;
Rectangle[] faces;

void setup() {
  size(640,480,P2D);
  
  // Start capturing
  cam = new Capture(this, 640, 480);
  cam.start();

  // Create the OpenCV object
  opencv = new OpenCV(this, cam.width, cam.height);
  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  
  img1 = loadImage("rsz_code.png");
  img2 = loadImage("rsz_112.png");
  img3 = loadImage("frame.png");
  img4 = loadImage("rsz_113.png");
}


void captureEvent(Capture cam) {
  cam.read();
}
//////////////////////////////////////////////////////////////////////
void draw() {
  
  background(0);
  opencv.loadImage(cam);
  // Detect the faces
  faces = opencv.detect();

  image(cam, 0, 0);

  if (faces != null) {
    for (int i = 0; i < faces.length; i++) {
      strokeWeight(2);
      stroke(255,0,0);
      noFill();
      
      image(img2, 0, 0);
       image(img3, 0, 0);
       image(img4, 0, 0);
       
       textSize(12);
      //random numbers 
      text(random(1,100), 500, 240);
          text(random(1,100), 540, 240);
            text(random(1,100), 500, 260);
              text(random(1,100), 540, 260);
        textSize(11);      
        text(random(1,100), 450, 235);
          text(random(1,100), 470, 240);
            text(random(1,100), 470, 255);
              text(random(1,100), 450, 260);
         textSize(12);       
        text(random(1,100), 500, 280);
          text(random(1,100), 540, 280);
            text(random(1,100), 500, 300);
              text(random(1,100), 540, 300);
                text(random(1,100), 530, 320);
         textSize(10);       
        text(random(1,100), 480, 285);
          text(random(1,100), 520, 285);
            text(random(1,100), 480, 305);
              text(random(1,100), 525, 305);
                text(random(1,100), 505, 320);
         textSize(10);
         text(random(1,100), 40, 100);
          text(random(1,100), 80, 100);
            text(random(1,100), 50, 120);
              text(random(1,100), 90, 120);
         textSize(12);     
        text(random(1,100), 90, 100);
          text(random(1,100), 100, 100);
            text(random(1,100), 80, 120);
              text(random(1,100), 110, 120);
        textSize(10);        
      text(random(1,100), 100, 150);
          text(random(1,100), 140, 150);
            text(random(1,100), 110, 170);
              text(random(1,100), 150, 170);
         textSize(11);     
        text(random(1,100), 40, 145);
          text(random(1,100), 60, 145);
            text(random(1,100), 50, 165);
              text(random(1,100), 90, 165);
              
              
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
 
      image(img1, faces[i].x*1.25, faces[i].y*1.5);
       textSize(10);
    text(k1, faces[i].x*1.25, faces[i].y*2.1);
    text(random(1,100), faces[i].x*1.45, faces[i].y*2.1);
    }
  }
}