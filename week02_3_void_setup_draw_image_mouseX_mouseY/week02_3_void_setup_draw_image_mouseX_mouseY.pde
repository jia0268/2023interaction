PImage img;
void setup(){
  size(600,600);
  img = loadImage("chair.png");
}
void draw(){
  image(img,mouseX,mouseY,300,400);
}
