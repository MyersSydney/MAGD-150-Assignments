float a = 2;
float b = 2;
float c = -3;
float d = -1;
float e = 8;
float f = 100;
float g = 300;
float h = 500;
float i = 1;
int pep = 20;
int pepoff = 20;
int pressed = 0;
int pressedState = 0;

void setup(){
  size(500,500);
  stroke(1);
  a=height/1;
 
}

void draw() {
  fill(20,20,20);  
  do
  {
    ellipse(random(10,width-10), random(10,width-10), 10, 10);
  }
  while (random(0,1) < 0.5);
  background(#00FFFF);
  noFill();
  stroke(#00CED1);
  strokeWeight(10);
  bezier(500, 200, 300, a,10,40,-10,80);  
  a = a - 1;
  if (a < 0) { 
    a = height;  
  }
  stroke(#E0FFFF);
  bezier(500,400,200,b,400,300,-10,300);
  b = b - 2;
  if (b < 0){
    b = height;
  }
  stroke(#00BFFF);
  bezier(500,90,300,180,300,c,-10,400);
  c = c - .5;
  if (c < 0){
    c = height;
  }
  stroke(#E0FFFF);
  bezier(500,1,20,10,d,90,-10,20);
  d = d - 1;
  if (d < 0){
    d= height;
  }
  stroke(#40E0D0);
  bezier(500,0,f,100,100,40,-10,500);
  f = f - 3;
  if (f<0){
    f = height;
  }
  stroke(#7FFFD4);
  bezier(500,0,g,400,400,20,-10,500);
  g = g - 2;
  if (g<0){
    g=height;
  }
  stroke(#48D1CC);
  bezier(500,400,h,300,300,500,-10,500);
  h = h - 2;
  if (h<0){
    h= height;
  }
  stroke(#20B2AA);
  bezier(500,500,300,500,200,10,-10,i);
  i= i -1;
  if (i<0){
    i=height;
  }
  
  stroke(#4682B4);
  bezier(500,100,e,300,200,200,-10,400);
  e = e - 2;
  if (e<0){
    e = height;
  }
  stroke(#F5D612);
  if (pressedState == 1){ 
  stroke(#F5D612);
  fill(#FFFF00);
  triangle(300,400,350,250,450,350); 
    fill(#FFFF00);
  triangle(100,100,250,50,250,200);
  triangle(100,400,200,400,125,250);
  stroke(#2F4F4F);
  strokeWeight (2);
  fill(#008080);//olives
  ellipse(200,150,8,8);
  ellipse(210,135,10,10);
  ellipse(240,180,7,7);
  ellipse(240,150,9,9);
  ellipse(170,130,10,10);
  ellipse(190,100,10,10);
  ellipse(200,80,7,7);
  ellipse(200,150,10,10);
  ellipse(240,100,9,9);
  ellipse(150,120,7,7);
  
  ellipse(350,300,10,10);
  ellipse(400,320,7,7);
  ellipse(370,360,9,9);
  ellipse(320,380,10,10);
  ellipse(340,350,7,7);
  
  ellipse(130,300,10,10);
  ellipse(120,360,7,7);
  ellipse(175,385,8,8);
  ellipse(140,350,10,10);
  ellipse(140,330,7,7);
  ellipse(140,380,10,10);
  }
  else if (pressedState==2){
    fill(#FFFF00);
  triangle(100,100,250,50,250,200);
  triangle(100,400,200,400,125,250);
  triangle(300,400,350,250,450,350);
  
  stroke(#BDB76B);
  strokeWeight(5);
  fill(#D5CF7B);
  arc(200,100,10,10,0, PI+QUARTER_PI, OPEN);
  arc(230,120,15,15,0, PI+QUARTER_PI, OPEN);
  arc(230,80,8,10,0, PI+QUARTER_PI, OPEN);
  arc(150,110,12,15,0, PI+QUARTER_PI, OPEN);
  arc(200,140,10,10,0, PI+QUARTER_PI, OPEN);
  arc(230,160,15,10,0, PI+QUARTER_PI, OPEN);
  
  arc(123,350,10,10,0, PI+QUARTER_PI, OPEN);
  arc(150,380,15,15,0, PI+QUARTER_PI, OPEN);
  arc(130,300,8,8,0,PI+QUARTER_PI, OPEN);
  arc(135,320,15,15,0,PI+QUARTER_PI, OPEN);
  
  arc(400,350,15,15,0,PI+QUARTER_PI, OPEN);
  arc(350,300,8,8,0,PI+QUARTER_PI, OPEN);
  arc(330,370,10,10,0,PI+QUARTER_PI, OPEN);
  arc(360,340,15,15,0,PI+QUARTER_PI, OPEN);
  arc(380,310,10,10,0,PI+QUARTER_PI, OPEN);
  }
    else{
  fill(#FFFF00);
  triangle(100,100,250,50,250,200);
  triangle(100,400,200,400,125,250);
  fill(#FF6347);//peps
  strokeWeight(2.5);
  stroke(#DC143C);
  ellipse(190,110,pep,20);
  ellipse(230,80,pep,20);
  ellipse(150,104,pep,20);
  ellipse(230,150,pep,20);
  
  strokeWeight(10);
  stroke(#F5D612);
  fill(#FFFF00);
  triangle(300,400,350,250,450,350);
  fill(#FF6347);
  strokeWeight(2.5);
  stroke(#DC143C);
  ellipse(360,300,pep,20);
  ellipse(400,340,pep,20);
  ellipse(335,360,pep,20);
  
  ellipse(134,310,pep,20);
  ellipse(150,350,pep,20);
  ellipse(130,380,pep,20);
  
  }
}
void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed %2);
  pressed = pressed + 1;
  pressedState = (pressed %3);
}
void keyPressed(){  
  pressed = pressed + 1;
  pressedState = (pressed %3);
}
  