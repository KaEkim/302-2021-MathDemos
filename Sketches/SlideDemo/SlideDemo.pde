float x1, x2, x3;

float v2 = 0;

void setup(){
  size(1920, 1080);  
}

void draw(){
  background(128);
  ////
  if (x1 < mouseX) x1 +=5;
  if (x1 > mouseX) x1 -=5;
  ////
  if(x2 < mouseX) v2++;
  if (x2 > mouseX) v2--;
  
  x2 += v2;
  ////
  x3 += (mouseX - x3)*.04;
  
  
  ellipse(x1, 100, 30, 30);
  ellipse(x2, 200, 30, 30);
  ellipse(x3, 300, 30, 30);
}
