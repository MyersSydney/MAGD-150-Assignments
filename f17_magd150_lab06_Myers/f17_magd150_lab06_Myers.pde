LightingMaybe myLightingMaybe;
void setup(){
  size(800, 600);
  myLightingMaybe = new LightingMaybe();
}

void draw(){
  background(#284554);
  PleaseRain();
  myLightingMaybe.display();
  SomeCoOolClouds();
  
  }

void PleaseRain(){
   frameRate(20);
   //creates a speed for the rain
  float a = random(-800, height);
  float b = random(width, 500);
  float c = random(-800, height);
  float d = random(height,500);
  float e = random(-800,width);
  float f = random(width,500);
  float g = random(-800,width);
  float h = random(width,500);
  float i = random(-800,width);
  float j = random(width,500);
  float k = random(-800,width);
  float l = random(width,500);
  float m = random(-800,width);
  float n = random(width,500);
  strokeWeight(3);
  stroke(0,random(255),random(255,255));
  line(a,b,b,a);
  stroke(0,random(255),random(255,255));
  line(d,c,c,d);
  stroke(0,random(255),random(255,255));
  line(e,f,f,e);
  stroke(0,random(255),random(255,255));
  line(g,h,h,g);
  stroke(0,random(255),random(255,255));
  line(i,j,j,i);
  stroke(0,random(255),random(255,255));
  line(k,l,l,k);
  stroke(0,random(255),random(255,255));
  line(m,n,n,m);
}
 void mousePressed(){
   println("("+mouseX+","+mouseY+")");
 }