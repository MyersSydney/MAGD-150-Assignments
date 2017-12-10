//https://www.youtube.com/watch?v=L3wKzyIN1yk - audio rip url

import processing.video.*;
Capture video;

import processing.sound.*;
 SoundFile song;
 float sound = .1;
 String audioName = "human.mp3";
 String path;
 
PFont f;
 
 PImage city;
 
void setup(){
 city = loadImage("City.jpg");
 size(500,500);
 
 video = new Capture(this, 640, 480); // camera display front facing code
  video.start();
  
f = createFont ("AppleColorEmoji",16); //meme text

path = sketchPath(audioName); //song - "human" by rang-and-bone
song = new SoundFile(this,path);
song.loop();
}

void draw(){
  tint(180);
 image(city,0,0,500,500);
 image(video,100,100,300,300); // this is the camera... not really an image
 
 textFont(f,20);
 text("this is a human",80,100);
 text("they live in the city",200,410);
 text("hello human",50,470);
 
 
 song.amp(sound);
 if (mousePressed){
   sound = sound +.1; //if mouse clicked the sound inceases
 }
 if (keyPressed){
   sound = sound - .1; //if key pressed the sound decreases
 }
  }
  
void captureEvent(Capture video) {
  video.read();
}