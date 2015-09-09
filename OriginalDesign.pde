int siz = 50; // diameter of the circle
int shape = 1; //decides the shape that will be produced, shape starts as a circle
int xCoorone, yCoorone, xCoortwo, yCoortwo, xCoorthree, yCoorthree;//the coordinates shapes
boolean keyA, keyB, keyC = false;//to allow the program to draw the rectangle
byte releaseNum; //sets differences in mouse release

void setup() {
  size (1000,1000);
  frameRate(30);
  back();
}

void draw() {
  if (keyCode==127){
     back();
   }
  if (shape==2){
   mouseWheel();
   circle();
   } else if (shape==3){
     tri();
   } else if (shape==1){
   lin();
   } else if (shape==4){
     rectangle();
   }
 }
 
 void back(){ // resets the screen to a random color every time delete is hit
   int cola = ((int) random(0,255));
   int colb = ((int) random(0,255));
   int colc = ((int) random(0,255));
     background(cola,colb,colc);
       keyCode=0;
 }
 
 void keyPressed() {  //changes the value of "shape"
   if (keyCode==39){
     shape=shape+1;
   } if (keyCode==37){
     shape=shape-1;
   } if (shape==5){
       shape=1;
   } if (shape==0){
       shape=1;
   }
   println(shape);
 }
 
void mouseWheel(MouseEvent event) {
   int sizeBigsmall = event.getCount();
   siz = siz + sizeBigsmall;
   //System.out.println(size);
 }


 void circle() {
  if (mouseButton==37){ 
  ellipse(mouseX,mouseY,siz,siz); 
   }
 }

 
 void rectangle() {
 if (mouseButton==37 && keyA==false){
   releaseNum=0;
   mouseReleased(); 
 } if (mouseButton==37 && keyA==true){
   releaseNum=1;
   mouseReleased();
 }else if(keyA==true && keyB == true){
 rect(xCoorone,yCoorone,xCoortwo-xCoorone,yCoortwo-yCoorone);
 keyA=false;
 keyB=false;
  }
 }
 
 void mouseReleased(){
   if (releaseNum==0){
   xCoorone=mouseX;
   yCoorone=mouseY;
   keyA = true;
     } else if (releaseNum==1){
   xCoortwo=mouseX;
   yCoortwo=mouseY;
   keyB = true;
   } else if (releaseNum==2){
   xCoorthree=mouseX;
   yCoorthree=mouseY;
   keyC = true;
   }
 }
 
 void lin(){
 if (mouseButton==37 && keyA==false){
   releaseNum=0;
   mouseReleased(); 
 } if (mouseButton==37 && keyA==true){
   releaseNum=1;
   mouseReleased();
 }else if(keyA==true && keyB == true){
 line(xCoorone,yCoorone,xCoortwo,yCoortwo);
 keyA=false;
 keyB=false;
  }
 }  
 
 void tri(){
  if (keyPressed){
  if (key=='w' && keyA==false){
   releaseNum=0;
   mouseReleased(); 
 } if (key=='a' && keyA==true){
   releaseNum=1;
   mouseReleased();
 } if (key=='d' && keyB==true){
   releaseNum=2;
   mouseReleased();
 } if(keyA==true && keyB == true && keyC == true){
triangle(xCoorone,yCoorone,xCoortwo,yCoortwo,xCoorthree,yCoorthree);
 keyA=false;
 keyB=false;
 keyC=false;
  }
 }  
 }  
 
