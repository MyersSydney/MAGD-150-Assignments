PImage earth;
PImage jupiter;
PShape globe; //used for the rotating earth
float rotationspeed;

//camera floats
float angle, speed, 
  x, y, z, 
  one, two, three, 
  upX, upY, upZ, 
  um, 
  view, 
  e = 250;
boolean lean;

 void setup(){
   size(700,700,P3D);
   textureMode(NORMAL);
  textureMode(REPEAT);
  noStroke();
  globe = createShape(SPHERE,100); 
  jupiter = loadImage("JupiterTexture.jpg");
  globe.setTexture(jupiter); //sets the teaxture to the globe
  
 angle = 0;
  speed = 5.0;
  x = width / 2.0;
  y = height / 2.0;
  z = view = (height / 2.0) / tan(PI * 60.0 / 360.0);
  one = x;
  two = y;
  three = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
  um = 2.0;
  lean = false;
 }
 void draw(){
   background(1);
   Blue();
   sun();
   mars();
   Jupiter();
   translate(height/2,width/2);
   
   ambientLight(255,185,33, 0, 40, 0);
   pointLight(255,245,33,0,40,0);
   
if (lean) {
    ortho(-width / um, 
      width / um, 
      -height / um, 
      height / um, 
      z / 1000.0, z * 1000.0);
  } else {
    perspective(PI / 3.0, 
      float(width) / float(height), 
      z / 2000.0, z * 2000.0);
  }
  camera(x, y, z, 
    one, two, three, 
    upX, upY, upZ);

  keys();
}
void Blue (){
 pushMatrix();
 noStroke();
 fill(0,206,209);
 lights();
 strokeWeight(0);
rotateY(radians(frameCount));
 translate(width,height-300,0);
 pointLight(255,245,33,0,40,0);
  sphere(100);
  popMatrix();
  rotationspeed +=.005;
   }
   void Jupiter(){
  pushMatrix();
  texture(jupiter);
 noStroke();
 strokeWeight(0);
rotateY(radians(frameCount+100));
 translate(width,height-100,500);
  shape(globe);
  popMatrix();
  rotationspeed +=.005;
}
void mars(){
  pushMatrix();
 noStroke();
 fill(220,20,60);
 lights();
 strokeWeight(0);
rotateY(radians(frameCount+50));
 translate(width,height-100,500);
 
 pointLight(255,245,33,0,40,0);
  sphere(50);
  popMatrix();
  rotationspeed +=.005;
}  
void sun(){
  pushMatrix();
  fill(224,222,156);
  noStroke();
  translate(350,650);
  ambientLight(155,77,5, 0, 40, 0);
  sphere(100);
   popMatrix();
}
void mousePressed(){
   println("("+mouseX+","+mouseY+")");
}
void keys() {
  if (keyPressed) {
    if (keyPressed) {
    if (y > 0
      && (key == 'w' || keyCode == UP)) {
      y -= speed;
      two = y;
    }
    if (x > -e
      && (key == 'a'|| keyCode == LEFT)) {
      x -= speed;
      one = x;
    }
    if (y < height - 10
      && (key == 's' || keyCode == DOWN)) {
      y += speed;
      two = y;
    }
    if (x < e
      && (key == 'd' || keyCode == RIGHT)) {
      x += speed;
      one = x;
      }
      z -= speed;
      three = z - view;
    }
      z += speed;
      three = z - view;
    }
  }