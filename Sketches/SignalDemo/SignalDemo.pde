
void setup(){
  size(500, 500);  
}

void draw(){
  background(128);
  
  float time = millis()/1000.0;
  
  float x = sin(time)*width/3 + width/2;
  float y = cos(time) * width/3 + width/2;
  
  ellipse(x, height/2, 50, 50);
  ellipse(width/2, y, 50, 50);
  line(x, .1, y, .1);
  
}
