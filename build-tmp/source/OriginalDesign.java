import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

int frame = 15;

public void setup()
{
size(250, 250);

}

public void draw()
{
circle();
mousePressed();
frameRate(frame);
buttonZero();
}

public void mousePressed() {
if (mouseButton == LEFT)  {
	frame=frame-1;
} else if (mouseButton == RIGHT) {
	frame=frame+1;
}
System.out.println(frame);
}

public void circle()
{
background(135);
float ranColor1 = random(0,250);
float ranColor2 = random(0,250);
float ranColor3 = random(0,250);
fill(ranColor1,ranColor2,ranColor3);
ellipse(mouseX,mouseY,50,50);
}

public void buttonZero() {
	mouseButton == 0;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
