PImage bg;
//int lts = 0;
/*int howManyLettersToShow(){
  return lts++;
}*/

String test = "*";

PImage circle;
PImage quality;
PImage login;
PImage brain;
//PImage organs;

float num1 = random(5,30);//lung left
float num2 = random(50,100);//heart
float num3 = random(5,30);//lung right
float num4 = random(30,50);//liver 
float num5 = random(5,30);//stomach
float num6 = random(5,30);//large
float num7 = random(5,30);//small
float num8 = random(100,300);//brain
String k1 = "OBJECT NO.000" + random(1, 100);
String k5 = "LUNG(LEFT)";
String k6 = "HEART";
String k7 = "LUNG(RIGHT)";
String k8 = "LIVER";
String k9 = "STOMACH";
String k10 = "LARGE INTESTINE";
String k11 = "SMALL INTESTINE";
String k20 = "BRAIN";

String k2 = "CALCULATING INFORMATION......";
String k3 = "Use age around "+ random(18, 35)+" years";//condition
String k4 = "Rate: "+ random(60,100)+" %";//quality
String k12 = "EVALUATION SYSYTEM";
String k13 = "VERIFYING IDENTITY......";
String k14 = "ID: ";
String k15 = "PASSCODE:  ";
String k16 = "CATERGORY: ";
String k17 = "The INTELLECTUALS";
String k18 = "The ATHLETICS";
String k19 = "N/A";

int y = 0;
int x = 0;
void setup(){
  frameRate(12);
  
   size(1440, 810);
   bg = loadImage("combine.jpg");
   //organs = loadImage("organs.png");
    circle = loadImage("circle.png");
    quality = loadImage("quality.png");
    login = loadImage("earth.jpg");
    brain = loadImage("brain.png");
      background(login);
       rect(width/2.7, height/2, 300, 35, 7);
       rect(width/2.7, height/2.7, 300, 35, 7);
       textSize(20);
       text(k15, width/2.7, height/2.02);
       text(k14, width/2.7, height/2.72);
   //image(organs, 542, 215);
}

void draw(){
/*howManyLettersToShow();
 
if (lts<=test.length()){
  fill(0);
text( test.substring(0,lts), width/2.7, height/2.2, 400,300);
}else{
  fill(0);
text(test,width/2.7, height/2.2,400,300);
}*/
   /*background(bg);
   stroke(226, 204, 0);
   line(0, y, width, y);
  
   y++;
   if (y > height) {
    y = 0; 
  }*/
  
}

void keyPressed () {
  if(x==0 && key >= 'a' && key <= 'z'){
    fill(0);
    textSize(30);
    text(test,537, 305,400,300);
    x++;
  }
  else if(x==1 && key >= 'a' && key <= 'z'){
    text(test,550, 305,400,300);
    x++;
  }
  else if(x==2 && key >= 'a' && key <= 'z'){
    text(test,563, 305,400,300);
    x++;
  }
  else if(x==3 && key >= 'a' && key <= 'z'){
    text(test,576, 305,400,300);
    x++;
  }
  else if(x==4 && key >= 'a' && key <= 'z'){
    text(test,589, 305,400,300);
    x++;
  }
  else if(x==5 && key >= 'a' && key <= 'z'){
    text(test,602, 305,400,300);
    x++;
  }
  else if(x==6 && key >= 'a' && key <= 'z'){
    text(test,615, 305,400,300);
    x++;
  }
  else if(x==7 && key >= 'a' && key <= 'z'){
    text(test,537, 410,400,300);
    x++;
  }
  else if(x==8 && key >= 'a' && key <= 'z'){
    text(test,550, 410,400,300);
    x++;
  }
  else if(x==9 && key >= 'a' && key <= 'z'){
    text(test,563, 410,400,300);
    x++;
  }
  else if(x==10 && key >= 'a' && key <= 'z'){
    text(test,576, 410,400,300);
    x++;
  }
  else if(x==11 && key >= 'a' && key <= 'z'){
    text(test,589, 410,400,300);
    x++;
  }
  else if(x==12 && key >= 'a' && key <= 'z'){
    text(test,602, 410,400,300);
    x++;
  }
  else if(x==13 && key >= 'a' && key <= 'z'){
    text(test,615, 410,400,300);
    x++;
  }
  
  
  
  else if(x == 14 && y ==0 && key == ENTER){
    fill(255);
    background(login);
    textSize(70);
    text(k13, width/5, height/2);
    y++;  
  }
  else if(y == 1 && key == ENTER){

    background(bg);
    textSize(33);
    image(brain, 563, 137);
    text(k12, 160, 80, 300, 300);
  }
}
void mouseClicked(){
    if( mouseX <579 && mouseX>554 && mouseY<312 && mouseY>200){
       background(bg);
       image(brain, 563, 137);
  
     println("lung(left)");
     image(circle, 480, 200);
     image(quality, 815, 260);
       
    //discribition 
     textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k5, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num1, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num1>20){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    
    }
    else if(num1<=20 && num1 >10){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num1 <=10){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
    }
      if( mouseX <605 && mouseX>582 && mouseY<312 && mouseY>200){
         background(bg);
         image(brain, 563, 137);
         
     println("heart");
     image(circle, 520, 200);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
     textSize(25);
      text(k6, 1120, 162,300,300);
     
     //value 
     textSize(40);
     text(num2, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
      textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num2>80){      
    textSize(20);
     text(k18, 80, 600, 300, 300);
    }
    else if(num2<=80 && num2 >50){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
   
    }
    else if(num2 <=50){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
    }
     if( mouseX<637 &&mouseX>605 && mouseY<312&& mouseY>200){
       background(bg);
      image(brain, 563, 137);
      
     println("lung(right)");
     image(circle, 560, 200);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k7, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num3, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num3>20){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num3<=20 && num3 >10){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    
    }
    else if(num3 <=10){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
if( mouseX<605 &&mouseX>555 && mouseY<346 && mouseY>312){
       background(bg);
       image(brain, 563, 137);
       
     println("liver");
     image(circle, 500, 250);
     image(quality, 815, 260);
       
    //discribition
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k8, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num4, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num4>50){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num4<=50 && num4 >40){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num4 <=40){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
if( mouseX<621 &&mouseX>605 && mouseY<346 && mouseY>312){
       background(bg);
          image(brain, 563, 137);
     println("stomach");
     image(circle, 540, 250);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k9, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num5, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num5>20){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num5<=20 && num5 >10){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num5 <=10){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
if( mouseX<683 &&mouseX>550 && mouseY<370 && mouseY>345){
       background(bg);
          image(brain, 563, 137);
     println("Large Intestine");
     image(circle, 520, 280);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k10, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num6, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num6>20){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num6<=20 && num6 >10){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num6 <=10){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
if( mouseX<614 &&mouseX>563 && mouseY<402 && mouseY>370){
       background(bg);
          image(brain, 563, 137);
     println("Small Intestine");
     image(circle, 520, 310);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k11, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num7, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num7>20){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num7<=20 && num7 >10){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num7 <=10){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
if( mouseX<614 &&mouseX>565 && mouseY<200){
       background(bg);
          image(brain, 563, 137);
          
     println("brain");
     image(circle, 520, 100);
     image(quality, 815, 260);
       
    //discribition 
      textSize(33);
    text(k12, 160, 80, 300, 300);
     textSize(18);
    text(k1, 1120, 130,300,300);
     text(k2, 1120, 200,300,300);
      textSize(25);
      text(k20, 1120, 165,300,300);
     
     //value 
     textSize(40);
     text(num8, 1220, 380);//price
      textSize(20);
     text(k3, 1020, 335, 170,300 );//condition
     textSize(28);
     text(k4, 835, 330, 170,300 );//quality
     
     textSize(33);
    text(k16, 80, 520, 300, 300);
    if(num8>250){      
    textSize(20);
    text(k17, 80, 600, 300, 300);
    }
    else if(num8<=250 && num8 >150){      
    textSize(20);
    text(k18, 80, 600, 300, 300);
    }
    else if(num8 <=150){      
    textSize(20);
    text(k19, 80, 600, 300, 300);
    }
}
}