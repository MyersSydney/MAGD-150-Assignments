
class Kachow {
  PVector a;//location
  PVector b;//speed
  PVector c;//acceleration
  float vroom;//top speed

  Kachow() { 
    a = new PVector(random(width),random(height));
    b = new PVector(0,0);
    vroom = 5;
  }
  void update() {
    PVector d = new PVector(width/3,height/2);
    c = PVector.sub(d,a);
    c.normalize();
    c.mult(0.2);
    b.add(c);
    b.limit(vroom);
    a.add(b);
  }
  void display() {
    scale(1,1);
    noStroke();
    fill(#FF1493);//pink
    ellipse(a.x+200,a.y+200,3,4);
    fill(#40E0D0);//blue
    ellipse(a.x-90,a.y-90,3,4);
    fill(#FF7F50); //coral
    ellipse(a.x+275,a.y-30,3,4);
    fill(#ADFF2F);//green
    ellipse(a.x+30,a.y-220,3,4);
      fill(#DDA0DD);//purple
    ellipse(a.x-90,a.y+250,3,4);
    fill(#FC003B);//red
    ellipse(a.x+250,a.y-240,3,4); 
  }
}