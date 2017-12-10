Kachow[] kachiga = new Kachow[500];
void setup() {
  size(500,500);
  for (int i = 0; i < kachiga.length; i++) {
    kachiga[i] = new Kachow(); 
  }
}
void draw() {
  arc(width/2, height/2, 200, 200, -HALF_PI, HALF_PI);
   background(#050730);
   noStroke();
   scale(1,1);
   for (int i = 0; i < kachiga.length; i++) {
    kachiga[i].update();
    kachiga[i].display();
   }
   //stars
   fill(random(0,255));
     ellipse(10,10,2,2);
     fill(random(0,255));
     ellipse(120,230,2,2);
     fill(random(0,255));
     ellipse(50,60,2,2);
     fill(random(0,255));
     ellipse(163,110,2,2);
     fill(random(0,255));
     ellipse(273,271,2,2);
     fill(random(0,255));
     ellipse(389,89,2,2);
     fill(random(0,255));
     ellipse(269,135,2,2);
     fill(random(0,255));
     ellipse(457,356,2,2);
     fill(random(0,255));
     ellipse(450,421,2,2);
     fill(random(0,255));
     ellipse(251,421,2,2);
     fill(random(0,255));
     ellipse(217,373,2,2);
     fill(random(0,255));
     ellipse(92,373,2,2);
     fill(random(0,255));
     ellipse(462,23,2,2);
     fill(random(0,255));
     ellipse(341,56,2,2);
     fill(random(0,255));
     ellipse(355,183,2,2);
     fill(random(0,255));
     ellipse(174,435,2,2);
     fill(random(0,255));
     ellipse(170,280,2,2);
     
      //clouds on right side
     fill(211,211,211,80);
   ellipse(10,230,100,80);
   ellipse(12,250,110,80);
   ellipse(50,240,100,80);
   ellipse(60,280,100,80);
   ellipse(100,265,100,80);
   ellipse(75,260,100,80);
   ellipse(50,250,100,80);
   ellipse(130,270,100,80);
   ellipse(100,230,100,80);
  
   //clouds middle
   translate(230,250);
     fill(211,211,211,80);
   ellipse(10,230,100,80);
   ellipse(12,250,110,80);
   ellipse(50,240,100,80);
   ellipse(60,280,100,80);
   ellipse(100,265,100,80);
   ellipse(75,260,100,80);
   ellipse(50,250,100,80);
   ellipse(130,270,100,80);
   ellipse(100,230,100,80);

   //moon  
   fill(245); 
   rotate(PI);
   ellipse(-60,-90,70,70);//moon 
   fill(#050730);
   ellipse(-70,-100,50,50);
   rotate(-PI);
   
   //most left cloud... ig?
   scale(.7,.7);
   translate(100,-400);
     fill(211,211,211,80);
   ellipse(10,230,100,80);
   ellipse(12,250,110,80);
   ellipse(50,240,100,80);
   ellipse(60,280,100,80);
   ellipse(100,265,100,80);
   ellipse(75,260,100,80);
   ellipse(50,250,100,80);
   ellipse(130,270,100,80);
   ellipse(100,230,100,80);
}
void mousePressed(){
   println("("+mouseX+","+mouseY+")");
}