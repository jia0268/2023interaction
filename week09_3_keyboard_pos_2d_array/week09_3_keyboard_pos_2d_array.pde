PImage img;
int [][] pos ={};
void setup(){
  size(800,600);
  img = loadImage("keyboard.jpg");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);//淡黃色背景
  image(img,0,600-296);
  fill(255,0,0,128);//128半透明紅色
  rect(mouseX,mouseY,43,43,5);//5圓滑
  fill(0,255,0,128);//半透明的綠色
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],43,43,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);//定位、印出mouse座標
}
