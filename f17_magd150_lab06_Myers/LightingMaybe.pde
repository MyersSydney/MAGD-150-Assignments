class LightingMaybe {
void LightingMaybe(){
  //idk why the code is dead if i delete it it stops working
}
void display(){
   //I wanted lighting somehow to apear randomly but this was my best attempt
  if(mousePressed){
    noFill();
  stroke(255,255,0);
  strokeWeight(10);
  beginShape();
  //far left bolt
 vertex(20,100);
  vertex(50,100);
  vertex(120,150);
 vertex(140,150);
 vertex(50,200);
 vertex(70,200);
vertex(110,200);
 vertex(130,200);
 vertex(120,230);
 vertex(150,250);
 endShape();
 //middle bolt
 beginShape();
 vertex(400,50);
 vertex(355,120);
 vertex(430,130);
 vertex(400,170);
 vertex(440,175);
 vertex(400,230);
 vertex(430,245);
 endShape();
 //far right bolt
 beginShape();
 vertex(720,55);
 vertex(665,125);
 vertex(735,130);
 vertex(700,175);
 vertex(730,200);
 vertex(700,251);
 endShape();
 //small left bolt
 beginShape();
 vertex(220,50);
 vertex(265,100);
 vertex(235,120);
 vertex(275,160);
 vertex(257,172);
endShape();
//small right bolt
beginShape();
vertex(595,54);
vertex(520,107);
vertex(587,147);
vertex(547,175);
endShape();
  }
}
}