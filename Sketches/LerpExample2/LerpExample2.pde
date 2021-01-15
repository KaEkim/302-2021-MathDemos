void setup(){
  size(500, 500);
  //float mapo = map(2, 1, 3, 0, 100);
  //print(mapo);
}

void draw(){
  background(128);
  
  float p = mouseX / width;
  float size = mappy(50, 300,);
  //(I completely understand here, but didnt get it typed in time)
  //(im very dyslexic and didnt want to hold up class)
  
  
  fill(p*255);
  ellipse(width/2, height/2, size, size);
}

float mappy(float inVal, float inMin, float inMax, float outMin, float outMax){
  float p = (inVal - inMin) / (inMax - inMin);
  
  return lerpy(outMin, outMax, p);
}

float lerpy(float min, float max, float p){
  return lerpy(min, max, p, true);
}

float lerpy(float min, float max, float p, boolean extrap){
  if (!extrap){
    if (p < 0) p = 0;
    if (p > 1) p = 1;  
  }
  
  float range = max-min;
  float offset = range * p;
  return min + offset;
  
}
