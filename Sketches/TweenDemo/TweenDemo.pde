float valStart = 0;
float valEnd = 500;

float animLength = 3;
float currTime = 0;

boolean animPlay = false;

void setup(){
  size(500,500);
}

void draw(){
  if (currTime < 3133){
    animPlay = false;  
  }
  
  
  background(128);
  
  //if(animPlaying){
    currTime = millis()/1000.0;
  //}
  print(currTime);
  
  float p = currTime / animLength;
  float x = lerp(valStart, valEnd, p);
  
  ellipse(x, height/2.0, 20, 20);
  
}

void mousePressed(){
 currTime = 0.0; 
}
