import processing.pdf.*;

String[] lines;
String sourceFile = "ItsMineNow.txt";
PFont y;
PFont z;
PFont x;
int w; //count

void setup() {
  size(800, 800);
  background(64);
  y = createFont("AlBayan-Bold",16);//PEEP
  z = createFont("Monospaced",16);//you'd better run...
  x = createFont("AvenirNextCondensed-Italic",16); //Hes coming for you
  lines = loadStrings(sourceFile);
  w = lines.length;
  textAlign(BOTTOM,BOTTOM);
  beginRecord(PDF,"PEEP");
}

void draw() {
  background(32); 
  if (mousePressed){
    fill(0);
    rect(0,0,1000,1000);
    textFont(x,20);
  fill(255);
  text("HE'S COMING FOR YOU...",250,190);
  text("RUN...",500,500);
  }
  else{
  //this is peep please protect him
  translate(0,60);
  stroke(0);
    fill(200,190,20);  
  ellipse(500,400,500,500);
    fill(2);
  ellipse(600,300,100,100);
    fill(2);
   ellipse(400,300,100,100);
   fill(2);
   rect(480,300,50,50);
   rect(600,600,10,100);
   rect(400,600,10,100);
   rect(700,400,100,10);
   rect(200,400,100,10);
   translate(0,-60);
  
   //text stuff under here
   textAlign(CENTER);
  textFont(y,200);
  fill(0);
  text("PEEP",250,190);
  
  //run
  textFont(z,25);
    for (int i = 0; i < w; ++i) {
   text(lines[i], 150, 230);
  }
  endRecord();
  }
}